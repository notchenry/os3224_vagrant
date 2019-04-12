#include "types.h"
#include "user.h"

int currSize = sizeof(char)* 4;
char* line;
char* base;
char* temp;
int size = 0;
int cflag = 0; // 0 = false, 1 = true
int dflag = 0;
int iflag = 0;
int repeatCount = 0;

void
uniq(int fd, int argc, char* argv[]){
  //flag checks
  int k;
  for (k = 0; k < argc; k++){
    printf(1,"%s ",argv[k]);
    if(strcmp("-c",argv[k]) == 0){
      cflag = 1;
      printf(1,"%sflag is now marked ", argv[k]);
    }else if (strcmp("-d",argv[k]) == 0){
      dflag = 1;
      printf(1,"%sflag is now marked", argv[k]);
    }else if (strcmp("-i",argv[k]) ==0){
      iflag = 1;
      printf(1,"%sflag is now marked", argv[k]);
    }
  }
  printf(1,"\n");

  //read line char by char
  char c;
  int n;

  while((n = read(fd,&c,1)) > 0){// loop through file, read line char by char
      //printf(1,"%c",c);

      //if capacity reached, double size of buffer
      if (size>=currSize-3){
        //printf(1, "time to resize \n" );
        currSize = currSize * 2;
        temp = malloc(currSize);
        strcpy(temp,line);
        free(line);
        line = temp;
      }

      if (c == '\n'){// if new line
        line[size] = c;
        line[size+1] = '\0';
        size++;
        //check if lines are the same
        if (strcmp(base,line)!=0){
          //not the same -> print w.e in base and reset line;
          if (cflag == 1 && repeatCount != 0){
            printf(1,"%d  ", repeatCount);
          }
          int x;
          for(x = 0; x < strlen(base); x++){
            printf(1,"%c", base[x]);
          }

          //clean up
          free(base);
          base = malloc(currSize*sizeof(char));
          strcpy(base,line);
          base[size] = '\0';
          size = 0;
          repeatCount = 1;
        }else{
          //are the same -> clean line, base unchanged
          free(line);
          size = 0;
          line = malloc(currSize*sizeof(char));
          repeatCount++;
        }
      }else{
        //not new line
        line[size] = c;
        line[size+1] = '\0';
        size++;
      }

  }
  //edge case where last line in file doesn't have another \n
  if(line[size]!='\n'){
    //check if whatever currently in line is same as prev
    line[size+1] = '\n';
    line[size+2] = '\0';
    //compare again for edgecase
    if(strcmp(base,line)!=0){ // if lines aren't equal
      //print prev line and print new line
      int x;
      if (cflag == 1){
        printf(1,"%d  ", repeatCount);
      }
      for(x = 0; x < strlen(base); x++){
        printf(1,"%c", base[x]);
      }
      if (cflag == 1){
        printf(1,"1  ");
      }
      for(x = 0; x < size; x++){
        printf(1,"%c", line[x]);
      }
    }else{
      //if lines are equal -> just print new lines
      if (cflag == 1){
        printf(1,"1  ");
      }
      int x;
      for(x = 0; x < size; x++){
        printf(1,"%c", line[x]);
      }
    }
  }
  exit();
}

int
main(int argc, char* argv[]){
  printf(0,"This is my uniq!!!!! \n");
  //user didn't provide filename
  int fd;
  line = malloc(currSize*sizeof(char));
  base = malloc(currSize*sizeof(char));
  if (argc <= 1){
    uniq(0,argc, argv);
    exit();
  }

  //user provides filename
  if((fd = open(argv[argc-1], 0)) < 0){
    printf(1, "uniq: cannot open %s\n", argv[1]);
    exit();
  }

  uniq(fd,argc,argv);

  close(fd);
  free(line);
  free(base);
  exit();
}

