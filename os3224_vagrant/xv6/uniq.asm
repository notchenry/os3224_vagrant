
_uniq:     file format elf32-i386


Disassembly of section .text:

00000000 <uniq>:
int dflag = 0;
int iflag = 0;
int repeatCount = 0;

void
uniq(int fd, int argc, char* argv[]){
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	53                   	push   %ebx
   4:	83 ec 34             	sub    $0x34,%esp
  //flag checks
  int k;
  for (k = 0; k < argc; k++){
   7:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
   e:	e9 12 01 00 00       	jmp    125 <uniq+0x125>
    printf(1,"%s ",argv[k]);
  13:	8b 45 f4             	mov    -0xc(%ebp),%eax
  16:	c1 e0 02             	shl    $0x2,%eax
  19:	03 45 10             	add    0x10(%ebp),%eax
  1c:	8b 00                	mov    (%eax),%eax
  1e:	89 44 24 08          	mov    %eax,0x8(%esp)
  22:	c7 44 24 04 9f 0d 00 	movl   $0xd9f,0x4(%esp)
  29:	00 
  2a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  31:	e8 a5 09 00 00       	call   9db <printf>
    if(strcmp("-c",argv[k]) == 0){
  36:	8b 45 f4             	mov    -0xc(%ebp),%eax
  39:	c1 e0 02             	shl    $0x2,%eax
  3c:	03 45 10             	add    0x10(%ebp),%eax
  3f:	8b 00                	mov    (%eax),%eax
  41:	89 44 24 04          	mov    %eax,0x4(%esp)
  45:	c7 04 24 a3 0d 00 00 	movl   $0xda3,(%esp)
  4c:	e8 00 06 00 00       	call   651 <strcmp>
  51:	85 c0                	test   %eax,%eax
  53:	75 32                	jne    87 <uniq+0x87>
      cflag = 1;
  55:	c7 05 90 10 00 00 01 	movl   $0x1,0x1090
  5c:	00 00 00 
      printf(1,"%sflag is now marked ", argv[k]);
  5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
  62:	c1 e0 02             	shl    $0x2,%eax
  65:	03 45 10             	add    0x10(%ebp),%eax
  68:	8b 00                	mov    (%eax),%eax
  6a:	89 44 24 08          	mov    %eax,0x8(%esp)
  6e:	c7 44 24 04 a6 0d 00 	movl   $0xda6,0x4(%esp)
  75:	00 
  76:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  7d:	e8 59 09 00 00       	call   9db <printf>
  82:	e9 9a 00 00 00       	jmp    121 <uniq+0x121>
    }else if (strcmp("-d",argv[k]) == 0){
  87:	8b 45 f4             	mov    -0xc(%ebp),%eax
  8a:	c1 e0 02             	shl    $0x2,%eax
  8d:	03 45 10             	add    0x10(%ebp),%eax
  90:	8b 00                	mov    (%eax),%eax
  92:	89 44 24 04          	mov    %eax,0x4(%esp)
  96:	c7 04 24 bc 0d 00 00 	movl   $0xdbc,(%esp)
  9d:	e8 af 05 00 00       	call   651 <strcmp>
  a2:	85 c0                	test   %eax,%eax
  a4:	75 2f                	jne    d5 <uniq+0xd5>
      dflag = 1;
  a6:	c7 05 94 10 00 00 01 	movl   $0x1,0x1094
  ad:	00 00 00 
      printf(1,"%sflag is now marked", argv[k]);
  b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
  b3:	c1 e0 02             	shl    $0x2,%eax
  b6:	03 45 10             	add    0x10(%ebp),%eax
  b9:	8b 00                	mov    (%eax),%eax
  bb:	89 44 24 08          	mov    %eax,0x8(%esp)
  bf:	c7 44 24 04 bf 0d 00 	movl   $0xdbf,0x4(%esp)
  c6:	00 
  c7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  ce:	e8 08 09 00 00       	call   9db <printf>
  d3:	eb 4c                	jmp    121 <uniq+0x121>
    }else if (strcmp("-i",argv[k]) ==0){
  d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  d8:	c1 e0 02             	shl    $0x2,%eax
  db:	03 45 10             	add    0x10(%ebp),%eax
  de:	8b 00                	mov    (%eax),%eax
  e0:	89 44 24 04          	mov    %eax,0x4(%esp)
  e4:	c7 04 24 d4 0d 00 00 	movl   $0xdd4,(%esp)
  eb:	e8 61 05 00 00       	call   651 <strcmp>
  f0:	85 c0                	test   %eax,%eax
  f2:	75 2d                	jne    121 <uniq+0x121>
      iflag = 1;
  f4:	c7 05 98 10 00 00 01 	movl   $0x1,0x1098
  fb:	00 00 00 
      printf(1,"%sflag is now marked", argv[k]);
  fe:	8b 45 f4             	mov    -0xc(%ebp),%eax
 101:	c1 e0 02             	shl    $0x2,%eax
 104:	03 45 10             	add    0x10(%ebp),%eax
 107:	8b 00                	mov    (%eax),%eax
 109:	89 44 24 08          	mov    %eax,0x8(%esp)
 10d:	c7 44 24 04 bf 0d 00 	movl   $0xdbf,0x4(%esp)
 114:	00 
 115:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 11c:	e8 ba 08 00 00       	call   9db <printf>

void
uniq(int fd, int argc, char* argv[]){
  //flag checks
  int k;
  for (k = 0; k < argc; k++){
 121:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 125:	8b 45 f4             	mov    -0xc(%ebp),%eax
 128:	3b 45 0c             	cmp    0xc(%ebp),%eax
 12b:	0f 8c e2 fe ff ff    	jl     13 <uniq+0x13>
    }else if (strcmp("-i",argv[k]) ==0){
      iflag = 1;
      printf(1,"%sflag is now marked", argv[k]);
    }
  }
  printf(1,"\n");
 131:	c7 44 24 04 d7 0d 00 	movl   $0xdd7,0x4(%esp)
 138:	00 
 139:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 140:	e8 96 08 00 00       	call   9db <printf>

  //read line char by char
  char c;
  int n;

  while((n = read(fd,&c,1)) > 0){// loop through file, read line char by char
 145:	e9 fc 01 00 00       	jmp    346 <uniq+0x346>
      //printf(1,"%c",c);

      //if capacity reached, double size of buffer
      if (size>=currSize-3){
 14a:	a1 74 10 00 00       	mov    0x1074,%eax
 14f:	8d 50 fd             	lea    -0x3(%eax),%edx
 152:	a1 8c 10 00 00       	mov    0x108c,%eax
 157:	39 c2                	cmp    %eax,%edx
 159:	7f 4c                	jg     1a7 <uniq+0x1a7>
        //printf(1, "time to resize \n" );
        currSize = currSize * 2;
 15b:	a1 74 10 00 00       	mov    0x1074,%eax
 160:	01 c0                	add    %eax,%eax
 162:	a3 74 10 00 00       	mov    %eax,0x1074
        temp = malloc(currSize);
 167:	a1 74 10 00 00       	mov    0x1074,%eax
 16c:	89 04 24             	mov    %eax,(%esp)
 16f:	e8 4b 0b 00 00       	call   cbf <malloc>
 174:	a3 b4 10 00 00       	mov    %eax,0x10b4
        strcpy(temp,line);
 179:	8b 15 b0 10 00 00    	mov    0x10b0,%edx
 17f:	a1 b4 10 00 00       	mov    0x10b4,%eax
 184:	89 54 24 04          	mov    %edx,0x4(%esp)
 188:	89 04 24             	mov    %eax,(%esp)
 18b:	e8 8d 04 00 00       	call   61d <strcpy>
        free(line);
 190:	a1 b0 10 00 00       	mov    0x10b0,%eax
 195:	89 04 24             	mov    %eax,(%esp)
 198:	e8 f3 09 00 00       	call   b90 <free>
        line = temp;
 19d:	a1 b4 10 00 00       	mov    0x10b4,%eax
 1a2:	a3 b0 10 00 00       	mov    %eax,0x10b0
      }

      if (c == '\n'){// if new line
 1a7:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
 1ab:	3c 0a                	cmp    $0xa,%al
 1ad:	0f 85 60 01 00 00    	jne    313 <uniq+0x313>
        line[size] = c;
 1b3:	8b 15 b0 10 00 00    	mov    0x10b0,%edx
 1b9:	a1 8c 10 00 00       	mov    0x108c,%eax
 1be:	01 c2                	add    %eax,%edx
 1c0:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
 1c4:	88 02                	mov    %al,(%edx)
        line[size+1] = '\0';
 1c6:	a1 b0 10 00 00       	mov    0x10b0,%eax
 1cb:	8b 15 8c 10 00 00    	mov    0x108c,%edx
 1d1:	83 c2 01             	add    $0x1,%edx
 1d4:	01 d0                	add    %edx,%eax
 1d6:	c6 00 00             	movb   $0x0,(%eax)
        size++;
 1d9:	a1 8c 10 00 00       	mov    0x108c,%eax
 1de:	83 c0 01             	add    $0x1,%eax
 1e1:	a3 8c 10 00 00       	mov    %eax,0x108c
        //check if lines are the same
        if (strcmp(base,line)!=0){
 1e6:	8b 15 b0 10 00 00    	mov    0x10b0,%edx
 1ec:	a1 ac 10 00 00       	mov    0x10ac,%eax
 1f1:	89 54 24 04          	mov    %edx,0x4(%esp)
 1f5:	89 04 24             	mov    %eax,(%esp)
 1f8:	e8 54 04 00 00       	call   651 <strcmp>
 1fd:	85 c0                	test   %eax,%eax
 1ff:	0f 84 d6 00 00 00    	je     2db <uniq+0x2db>
          //not the same -> print w.e in base and reset line;
          if (cflag == 1 && repeatCount != 0){
 205:	a1 90 10 00 00       	mov    0x1090,%eax
 20a:	83 f8 01             	cmp    $0x1,%eax
 20d:	75 26                	jne    235 <uniq+0x235>
 20f:	a1 9c 10 00 00       	mov    0x109c,%eax
 214:	85 c0                	test   %eax,%eax
 216:	74 1d                	je     235 <uniq+0x235>
            printf(1,"%d  ", repeatCount);
 218:	a1 9c 10 00 00       	mov    0x109c,%eax
 21d:	89 44 24 08          	mov    %eax,0x8(%esp)
 221:	c7 44 24 04 d9 0d 00 	movl   $0xdd9,0x4(%esp)
 228:	00 
 229:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 230:	e8 a6 07 00 00       	call   9db <printf>
          }
          int x;
          for(x = 0; x < strlen(base); x++){
 235:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 23c:	eb 2d                	jmp    26b <uniq+0x26b>
            printf(1,"%c", base[x]);
 23e:	8b 15 ac 10 00 00    	mov    0x10ac,%edx
 244:	8b 45 f0             	mov    -0x10(%ebp),%eax
 247:	01 d0                	add    %edx,%eax
 249:	0f b6 00             	movzbl (%eax),%eax
 24c:	0f be c0             	movsbl %al,%eax
 24f:	89 44 24 08          	mov    %eax,0x8(%esp)
 253:	c7 44 24 04 de 0d 00 	movl   $0xdde,0x4(%esp)
 25a:	00 
 25b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 262:	e8 74 07 00 00       	call   9db <printf>
          //not the same -> print w.e in base and reset line;
          if (cflag == 1 && repeatCount != 0){
            printf(1,"%d  ", repeatCount);
          }
          int x;
          for(x = 0; x < strlen(base); x++){
 267:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 26b:	8b 5d f0             	mov    -0x10(%ebp),%ebx
 26e:	a1 ac 10 00 00       	mov    0x10ac,%eax
 273:	89 04 24             	mov    %eax,(%esp)
 276:	e8 17 04 00 00       	call   692 <strlen>
 27b:	39 c3                	cmp    %eax,%ebx
 27d:	72 bf                	jb     23e <uniq+0x23e>
            printf(1,"%c", base[x]);
          }

          //clean up
          free(base);
 27f:	a1 ac 10 00 00       	mov    0x10ac,%eax
 284:	89 04 24             	mov    %eax,(%esp)
 287:	e8 04 09 00 00       	call   b90 <free>
          base = malloc(currSize*sizeof(char));
 28c:	a1 74 10 00 00       	mov    0x1074,%eax
 291:	89 04 24             	mov    %eax,(%esp)
 294:	e8 26 0a 00 00       	call   cbf <malloc>
 299:	a3 ac 10 00 00       	mov    %eax,0x10ac
          strcpy(base,line);
 29e:	8b 15 b0 10 00 00    	mov    0x10b0,%edx
 2a4:	a1 ac 10 00 00       	mov    0x10ac,%eax
 2a9:	89 54 24 04          	mov    %edx,0x4(%esp)
 2ad:	89 04 24             	mov    %eax,(%esp)
 2b0:	e8 68 03 00 00       	call   61d <strcpy>
          base[size] = '\0';
 2b5:	8b 15 ac 10 00 00    	mov    0x10ac,%edx
 2bb:	a1 8c 10 00 00       	mov    0x108c,%eax
 2c0:	01 d0                	add    %edx,%eax
 2c2:	c6 00 00             	movb   $0x0,(%eax)
          size = 0;
 2c5:	c7 05 8c 10 00 00 00 	movl   $0x0,0x108c
 2cc:	00 00 00 
          repeatCount = 1;
 2cf:	c7 05 9c 10 00 00 01 	movl   $0x1,0x109c
 2d6:	00 00 00 
 2d9:	eb 6b                	jmp    346 <uniq+0x346>
        }else{
          //are the same -> clean line, base unchanged
          free(line);
 2db:	a1 b0 10 00 00       	mov    0x10b0,%eax
 2e0:	89 04 24             	mov    %eax,(%esp)
 2e3:	e8 a8 08 00 00       	call   b90 <free>
          size = 0;
 2e8:	c7 05 8c 10 00 00 00 	movl   $0x0,0x108c
 2ef:	00 00 00 
          line = malloc(currSize*sizeof(char));
 2f2:	a1 74 10 00 00       	mov    0x1074,%eax
 2f7:	89 04 24             	mov    %eax,(%esp)
 2fa:	e8 c0 09 00 00       	call   cbf <malloc>
 2ff:	a3 b0 10 00 00       	mov    %eax,0x10b0
          repeatCount++;
 304:	a1 9c 10 00 00       	mov    0x109c,%eax
 309:	83 c0 01             	add    $0x1,%eax
 30c:	a3 9c 10 00 00       	mov    %eax,0x109c
 311:	eb 33                	jmp    346 <uniq+0x346>
        }
      }else{
        //not new line
        line[size] = c;
 313:	8b 15 b0 10 00 00    	mov    0x10b0,%edx
 319:	a1 8c 10 00 00       	mov    0x108c,%eax
 31e:	01 c2                	add    %eax,%edx
 320:	0f b6 45 e3          	movzbl -0x1d(%ebp),%eax
 324:	88 02                	mov    %al,(%edx)
        line[size+1] = '\0';
 326:	a1 b0 10 00 00       	mov    0x10b0,%eax
 32b:	8b 15 8c 10 00 00    	mov    0x108c,%edx
 331:	83 c2 01             	add    $0x1,%edx
 334:	01 d0                	add    %edx,%eax
 336:	c6 00 00             	movb   $0x0,(%eax)
        size++;
 339:	a1 8c 10 00 00       	mov    0x108c,%eax
 33e:	83 c0 01             	add    $0x1,%eax
 341:	a3 8c 10 00 00       	mov    %eax,0x108c

  //read line char by char
  char c;
  int n;

  while((n = read(fd,&c,1)) > 0){// loop through file, read line char by char
 346:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 34d:	00 
 34e:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 351:	89 44 24 04          	mov    %eax,0x4(%esp)
 355:	8b 45 08             	mov    0x8(%ebp),%eax
 358:	89 04 24             	mov    %eax,(%esp)
 35b:	e8 14 05 00 00       	call   874 <read>
 360:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 363:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 367:	0f 8f dd fd ff ff    	jg     14a <uniq+0x14a>
        size++;
      }

  }
  //edge case where last line in file doesn't have another \n
  if(line[size]!='\n'){
 36d:	8b 15 b0 10 00 00    	mov    0x10b0,%edx
 373:	a1 8c 10 00 00       	mov    0x108c,%eax
 378:	01 d0                	add    %edx,%eax
 37a:	0f b6 00             	movzbl (%eax),%eax
 37d:	3c 0a                	cmp    $0xa,%al
 37f:	0f 84 74 01 00 00    	je     4f9 <uniq+0x4f9>
    //check if whatever currently in line is same as prev
    line[size+1] = '\n';
 385:	a1 b0 10 00 00       	mov    0x10b0,%eax
 38a:	8b 15 8c 10 00 00    	mov    0x108c,%edx
 390:	83 c2 01             	add    $0x1,%edx
 393:	01 d0                	add    %edx,%eax
 395:	c6 00 0a             	movb   $0xa,(%eax)
    line[size+2] = '\0';
 398:	a1 b0 10 00 00       	mov    0x10b0,%eax
 39d:	8b 15 8c 10 00 00    	mov    0x108c,%edx
 3a3:	83 c2 02             	add    $0x2,%edx
 3a6:	01 d0                	add    %edx,%eax
 3a8:	c6 00 00             	movb   $0x0,(%eax)
    //compare again for edgecase
    if(strcmp(base,line)!=0){ // if lines aren't equal
 3ab:	8b 15 b0 10 00 00    	mov    0x10b0,%edx
 3b1:	a1 ac 10 00 00       	mov    0x10ac,%eax
 3b6:	89 54 24 04          	mov    %edx,0x4(%esp)
 3ba:	89 04 24             	mov    %eax,(%esp)
 3bd:	e8 8f 02 00 00       	call   651 <strcmp>
 3c2:	85 c0                	test   %eax,%eax
 3c4:	0f 84 d1 00 00 00    	je     49b <uniq+0x49b>
      //print prev line and print new line
      int x;
      if (cflag == 1){
 3ca:	a1 90 10 00 00       	mov    0x1090,%eax
 3cf:	83 f8 01             	cmp    $0x1,%eax
 3d2:	75 1d                	jne    3f1 <uniq+0x3f1>
        printf(1,"%d  ", repeatCount);
 3d4:	a1 9c 10 00 00       	mov    0x109c,%eax
 3d9:	89 44 24 08          	mov    %eax,0x8(%esp)
 3dd:	c7 44 24 04 d9 0d 00 	movl   $0xdd9,0x4(%esp)
 3e4:	00 
 3e5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 3ec:	e8 ea 05 00 00       	call   9db <printf>
      }
      for(x = 0; x < strlen(base); x++){
 3f1:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 3f8:	eb 2d                	jmp    427 <uniq+0x427>
        printf(1,"%c", base[x]);
 3fa:	8b 15 ac 10 00 00    	mov    0x10ac,%edx
 400:	8b 45 ec             	mov    -0x14(%ebp),%eax
 403:	01 d0                	add    %edx,%eax
 405:	0f b6 00             	movzbl (%eax),%eax
 408:	0f be c0             	movsbl %al,%eax
 40b:	89 44 24 08          	mov    %eax,0x8(%esp)
 40f:	c7 44 24 04 de 0d 00 	movl   $0xdde,0x4(%esp)
 416:	00 
 417:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 41e:	e8 b8 05 00 00       	call   9db <printf>
      //print prev line and print new line
      int x;
      if (cflag == 1){
        printf(1,"%d  ", repeatCount);
      }
      for(x = 0; x < strlen(base); x++){
 423:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 427:	8b 5d ec             	mov    -0x14(%ebp),%ebx
 42a:	a1 ac 10 00 00       	mov    0x10ac,%eax
 42f:	89 04 24             	mov    %eax,(%esp)
 432:	e8 5b 02 00 00       	call   692 <strlen>
 437:	39 c3                	cmp    %eax,%ebx
 439:	72 bf                	jb     3fa <uniq+0x3fa>
        printf(1,"%c", base[x]);
      }
      if (cflag == 1){
 43b:	a1 90 10 00 00       	mov    0x1090,%eax
 440:	83 f8 01             	cmp    $0x1,%eax
 443:	75 14                	jne    459 <uniq+0x459>
        printf(1,"1  ");
 445:	c7 44 24 04 e1 0d 00 	movl   $0xde1,0x4(%esp)
 44c:	00 
 44d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 454:	e8 82 05 00 00       	call   9db <printf>
      }
      for(x = 0; x < size; x++){
 459:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 460:	eb 2d                	jmp    48f <uniq+0x48f>
        printf(1,"%c", line[x]);
 462:	8b 15 b0 10 00 00    	mov    0x10b0,%edx
 468:	8b 45 ec             	mov    -0x14(%ebp),%eax
 46b:	01 d0                	add    %edx,%eax
 46d:	0f b6 00             	movzbl (%eax),%eax
 470:	0f be c0             	movsbl %al,%eax
 473:	89 44 24 08          	mov    %eax,0x8(%esp)
 477:	c7 44 24 04 de 0d 00 	movl   $0xdde,0x4(%esp)
 47e:	00 
 47f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 486:	e8 50 05 00 00       	call   9db <printf>
        printf(1,"%c", base[x]);
      }
      if (cflag == 1){
        printf(1,"1  ");
      }
      for(x = 0; x < size; x++){
 48b:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 48f:	a1 8c 10 00 00       	mov    0x108c,%eax
 494:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 497:	7c c9                	jl     462 <uniq+0x462>
 499:	eb 5e                	jmp    4f9 <uniq+0x4f9>
        printf(1,"%c", line[x]);
      }
    }else{
      //if lines are equal -> just print new lines
      if (cflag == 1){
 49b:	a1 90 10 00 00       	mov    0x1090,%eax
 4a0:	83 f8 01             	cmp    $0x1,%eax
 4a3:	75 14                	jne    4b9 <uniq+0x4b9>
        printf(1,"1  ");
 4a5:	c7 44 24 04 e1 0d 00 	movl   $0xde1,0x4(%esp)
 4ac:	00 
 4ad:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 4b4:	e8 22 05 00 00       	call   9db <printf>
      }
      int x;
      for(x = 0; x < size; x++){
 4b9:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 4c0:	eb 2d                	jmp    4ef <uniq+0x4ef>
        printf(1,"%c", line[x]);
 4c2:	8b 15 b0 10 00 00    	mov    0x10b0,%edx
 4c8:	8b 45 e8             	mov    -0x18(%ebp),%eax
 4cb:	01 d0                	add    %edx,%eax
 4cd:	0f b6 00             	movzbl (%eax),%eax
 4d0:	0f be c0             	movsbl %al,%eax
 4d3:	89 44 24 08          	mov    %eax,0x8(%esp)
 4d7:	c7 44 24 04 de 0d 00 	movl   $0xdde,0x4(%esp)
 4de:	00 
 4df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 4e6:	e8 f0 04 00 00       	call   9db <printf>
      //if lines are equal -> just print new lines
      if (cflag == 1){
        printf(1,"1  ");
      }
      int x;
      for(x = 0; x < size; x++){
 4eb:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
 4ef:	a1 8c 10 00 00       	mov    0x108c,%eax
 4f4:	39 45 e8             	cmp    %eax,-0x18(%ebp)
 4f7:	7c c9                	jl     4c2 <uniq+0x4c2>
        printf(1,"%c", line[x]);
      }
    }
  }
  exit();
 4f9:	e8 5e 03 00 00       	call   85c <exit>

000004fe <main>:
}

int
main(int argc, char* argv[]){
 4fe:	55                   	push   %ebp
 4ff:	89 e5                	mov    %esp,%ebp
 501:	83 e4 f0             	and    $0xfffffff0,%esp
 504:	83 ec 20             	sub    $0x20,%esp
  printf(0,"This is my uniq!!!!! \n");
 507:	c7 44 24 04 e5 0d 00 	movl   $0xde5,0x4(%esp)
 50e:	00 
 50f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 516:	e8 c0 04 00 00       	call   9db <printf>
  //user didn't provide filename
  int fd;
  line = malloc(currSize*sizeof(char));
 51b:	a1 74 10 00 00       	mov    0x1074,%eax
 520:	89 04 24             	mov    %eax,(%esp)
 523:	e8 97 07 00 00       	call   cbf <malloc>
 528:	a3 b0 10 00 00       	mov    %eax,0x10b0
  base = malloc(currSize*sizeof(char));
 52d:	a1 74 10 00 00       	mov    0x1074,%eax
 532:	89 04 24             	mov    %eax,(%esp)
 535:	e8 85 07 00 00       	call   cbf <malloc>
 53a:	a3 ac 10 00 00       	mov    %eax,0x10ac
  if (argc <= 1){
 53f:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 543:	7f 1f                	jg     564 <main+0x66>
    uniq(0,argc, argv);
 545:	8b 45 0c             	mov    0xc(%ebp),%eax
 548:	89 44 24 08          	mov    %eax,0x8(%esp)
 54c:	8b 45 08             	mov    0x8(%ebp),%eax
 54f:	89 44 24 04          	mov    %eax,0x4(%esp)
 553:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 55a:	e8 a1 fa ff ff       	call   0 <uniq>
    exit();
 55f:	e8 f8 02 00 00       	call   85c <exit>
  }

  //user provides filename
  if((fd = open(argv[argc-1], 0)) < 0){
 564:	8b 45 08             	mov    0x8(%ebp),%eax
 567:	83 e8 01             	sub    $0x1,%eax
 56a:	c1 e0 02             	shl    $0x2,%eax
 56d:	03 45 0c             	add    0xc(%ebp),%eax
 570:	8b 00                	mov    (%eax),%eax
 572:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 579:	00 
 57a:	89 04 24             	mov    %eax,(%esp)
 57d:	e8 1a 03 00 00       	call   89c <open>
 582:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 586:	83 7c 24 1c 00       	cmpl   $0x0,0x1c(%esp)
 58b:	79 25                	jns    5b2 <main+0xb4>
    printf(1, "uniq: cannot open %s\n", argv[1]);
 58d:	8b 45 0c             	mov    0xc(%ebp),%eax
 590:	83 c0 04             	add    $0x4,%eax
 593:	8b 00                	mov    (%eax),%eax
 595:	89 44 24 08          	mov    %eax,0x8(%esp)
 599:	c7 44 24 04 fc 0d 00 	movl   $0xdfc,0x4(%esp)
 5a0:	00 
 5a1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 5a8:	e8 2e 04 00 00       	call   9db <printf>
    exit();
 5ad:	e8 aa 02 00 00       	call   85c <exit>
  }

  uniq(fd,argc,argv);
 5b2:	8b 45 0c             	mov    0xc(%ebp),%eax
 5b5:	89 44 24 08          	mov    %eax,0x8(%esp)
 5b9:	8b 45 08             	mov    0x8(%ebp),%eax
 5bc:	89 44 24 04          	mov    %eax,0x4(%esp)
 5c0:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 5c4:	89 04 24             	mov    %eax,(%esp)
 5c7:	e8 34 fa ff ff       	call   0 <uniq>

  close(fd);
 5cc:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 5d0:	89 04 24             	mov    %eax,(%esp)
 5d3:	e8 ac 02 00 00       	call   884 <close>
  free(line);
 5d8:	a1 b0 10 00 00       	mov    0x10b0,%eax
 5dd:	89 04 24             	mov    %eax,(%esp)
 5e0:	e8 ab 05 00 00       	call   b90 <free>
  free(base);
 5e5:	a1 ac 10 00 00       	mov    0x10ac,%eax
 5ea:	89 04 24             	mov    %eax,(%esp)
 5ed:	e8 9e 05 00 00       	call   b90 <free>
  exit();
 5f2:	e8 65 02 00 00       	call   85c <exit>
 5f7:	90                   	nop

000005f8 <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
 5f8:	55                   	push   %ebp
 5f9:	89 e5                	mov    %esp,%ebp
 5fb:	57                   	push   %edi
 5fc:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
 5fd:	8b 4d 08             	mov    0x8(%ebp),%ecx
 600:	8b 55 10             	mov    0x10(%ebp),%edx
 603:	8b 45 0c             	mov    0xc(%ebp),%eax
 606:	89 cb                	mov    %ecx,%ebx
 608:	89 df                	mov    %ebx,%edi
 60a:	89 d1                	mov    %edx,%ecx
 60c:	fc                   	cld    
 60d:	f3 aa                	rep stos %al,%es:(%edi)
 60f:	89 ca                	mov    %ecx,%edx
 611:	89 fb                	mov    %edi,%ebx
 613:	89 5d 08             	mov    %ebx,0x8(%ebp)
 616:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
 619:	5b                   	pop    %ebx
 61a:	5f                   	pop    %edi
 61b:	5d                   	pop    %ebp
 61c:	c3                   	ret    

0000061d <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
 61d:	55                   	push   %ebp
 61e:	89 e5                	mov    %esp,%ebp
 620:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
 623:	8b 45 08             	mov    0x8(%ebp),%eax
 626:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
 629:	90                   	nop
 62a:	8b 45 0c             	mov    0xc(%ebp),%eax
 62d:	0f b6 10             	movzbl (%eax),%edx
 630:	8b 45 08             	mov    0x8(%ebp),%eax
 633:	88 10                	mov    %dl,(%eax)
 635:	8b 45 08             	mov    0x8(%ebp),%eax
 638:	0f b6 00             	movzbl (%eax),%eax
 63b:	84 c0                	test   %al,%al
 63d:	0f 95 c0             	setne  %al
 640:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 644:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
 648:	84 c0                	test   %al,%al
 64a:	75 de                	jne    62a <strcpy+0xd>
    ;
  return os;
 64c:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 64f:	c9                   	leave  
 650:	c3                   	ret    

00000651 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 651:	55                   	push   %ebp
 652:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
 654:	eb 08                	jmp    65e <strcmp+0xd>
    p++, q++;
 656:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 65a:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 65e:	8b 45 08             	mov    0x8(%ebp),%eax
 661:	0f b6 00             	movzbl (%eax),%eax
 664:	84 c0                	test   %al,%al
 666:	74 10                	je     678 <strcmp+0x27>
 668:	8b 45 08             	mov    0x8(%ebp),%eax
 66b:	0f b6 10             	movzbl (%eax),%edx
 66e:	8b 45 0c             	mov    0xc(%ebp),%eax
 671:	0f b6 00             	movzbl (%eax),%eax
 674:	38 c2                	cmp    %al,%dl
 676:	74 de                	je     656 <strcmp+0x5>
    p++, q++;
  return (uchar)*p - (uchar)*q;
 678:	8b 45 08             	mov    0x8(%ebp),%eax
 67b:	0f b6 00             	movzbl (%eax),%eax
 67e:	0f b6 d0             	movzbl %al,%edx
 681:	8b 45 0c             	mov    0xc(%ebp),%eax
 684:	0f b6 00             	movzbl (%eax),%eax
 687:	0f b6 c0             	movzbl %al,%eax
 68a:	89 d1                	mov    %edx,%ecx
 68c:	29 c1                	sub    %eax,%ecx
 68e:	89 c8                	mov    %ecx,%eax
}
 690:	5d                   	pop    %ebp
 691:	c3                   	ret    

00000692 <strlen>:

uint
strlen(char *s)
{
 692:	55                   	push   %ebp
 693:	89 e5                	mov    %esp,%ebp
 695:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
 698:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 69f:	eb 04                	jmp    6a5 <strlen+0x13>
 6a1:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 6a5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6a8:	03 45 08             	add    0x8(%ebp),%eax
 6ab:	0f b6 00             	movzbl (%eax),%eax
 6ae:	84 c0                	test   %al,%al
 6b0:	75 ef                	jne    6a1 <strlen+0xf>
    ;
  return n;
 6b2:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 6b5:	c9                   	leave  
 6b6:	c3                   	ret    

000006b7 <memset>:

void*
memset(void *dst, int c, uint n)
{
 6b7:	55                   	push   %ebp
 6b8:	89 e5                	mov    %esp,%ebp
 6ba:	83 ec 0c             	sub    $0xc,%esp
  stosb(dst, c, n);
 6bd:	8b 45 10             	mov    0x10(%ebp),%eax
 6c0:	89 44 24 08          	mov    %eax,0x8(%esp)
 6c4:	8b 45 0c             	mov    0xc(%ebp),%eax
 6c7:	89 44 24 04          	mov    %eax,0x4(%esp)
 6cb:	8b 45 08             	mov    0x8(%ebp),%eax
 6ce:	89 04 24             	mov    %eax,(%esp)
 6d1:	e8 22 ff ff ff       	call   5f8 <stosb>
  return dst;
 6d6:	8b 45 08             	mov    0x8(%ebp),%eax
}
 6d9:	c9                   	leave  
 6da:	c3                   	ret    

000006db <strchr>:

char*
strchr(const char *s, char c)
{
 6db:	55                   	push   %ebp
 6dc:	89 e5                	mov    %esp,%ebp
 6de:	83 ec 04             	sub    $0x4,%esp
 6e1:	8b 45 0c             	mov    0xc(%ebp),%eax
 6e4:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
 6e7:	eb 14                	jmp    6fd <strchr+0x22>
    if(*s == c)
 6e9:	8b 45 08             	mov    0x8(%ebp),%eax
 6ec:	0f b6 00             	movzbl (%eax),%eax
 6ef:	3a 45 fc             	cmp    -0x4(%ebp),%al
 6f2:	75 05                	jne    6f9 <strchr+0x1e>
      return (char*)s;
 6f4:	8b 45 08             	mov    0x8(%ebp),%eax
 6f7:	eb 13                	jmp    70c <strchr+0x31>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 6f9:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 6fd:	8b 45 08             	mov    0x8(%ebp),%eax
 700:	0f b6 00             	movzbl (%eax),%eax
 703:	84 c0                	test   %al,%al
 705:	75 e2                	jne    6e9 <strchr+0xe>
    if(*s == c)
      return (char*)s;
  return 0;
 707:	b8 00 00 00 00       	mov    $0x0,%eax
}
 70c:	c9                   	leave  
 70d:	c3                   	ret    

0000070e <gets>:

char*
gets(char *buf, int max)
{
 70e:	55                   	push   %ebp
 70f:	89 e5                	mov    %esp,%ebp
 711:	83 ec 28             	sub    $0x28,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 714:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 71b:	eb 44                	jmp    761 <gets+0x53>
    cc = read(0, &c, 1);
 71d:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 724:	00 
 725:	8d 45 ef             	lea    -0x11(%ebp),%eax
 728:	89 44 24 04          	mov    %eax,0x4(%esp)
 72c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 733:	e8 3c 01 00 00       	call   874 <read>
 738:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if(cc < 1)
 73b:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 73f:	7e 2d                	jle    76e <gets+0x60>
      break;
    buf[i++] = c;
 741:	8b 45 f4             	mov    -0xc(%ebp),%eax
 744:	03 45 08             	add    0x8(%ebp),%eax
 747:	0f b6 55 ef          	movzbl -0x11(%ebp),%edx
 74b:	88 10                	mov    %dl,(%eax)
 74d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    if(c == '\n' || c == '\r')
 751:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 755:	3c 0a                	cmp    $0xa,%al
 757:	74 16                	je     76f <gets+0x61>
 759:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 75d:	3c 0d                	cmp    $0xd,%al
 75f:	74 0e                	je     76f <gets+0x61>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 761:	8b 45 f4             	mov    -0xc(%ebp),%eax
 764:	83 c0 01             	add    $0x1,%eax
 767:	3b 45 0c             	cmp    0xc(%ebp),%eax
 76a:	7c b1                	jl     71d <gets+0xf>
 76c:	eb 01                	jmp    76f <gets+0x61>
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
 76e:	90                   	nop
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 76f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 772:	03 45 08             	add    0x8(%ebp),%eax
 775:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
 778:	8b 45 08             	mov    0x8(%ebp),%eax
}
 77b:	c9                   	leave  
 77c:	c3                   	ret    

0000077d <stat>:

int
stat(char *n, struct stat *st)
{
 77d:	55                   	push   %ebp
 77e:	89 e5                	mov    %esp,%ebp
 780:	83 ec 28             	sub    $0x28,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 783:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 78a:	00 
 78b:	8b 45 08             	mov    0x8(%ebp),%eax
 78e:	89 04 24             	mov    %eax,(%esp)
 791:	e8 06 01 00 00       	call   89c <open>
 796:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(fd < 0)
 799:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 79d:	79 07                	jns    7a6 <stat+0x29>
    return -1;
 79f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 7a4:	eb 23                	jmp    7c9 <stat+0x4c>
  r = fstat(fd, st);
 7a6:	8b 45 0c             	mov    0xc(%ebp),%eax
 7a9:	89 44 24 04          	mov    %eax,0x4(%esp)
 7ad:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7b0:	89 04 24             	mov    %eax,(%esp)
 7b3:	e8 fc 00 00 00       	call   8b4 <fstat>
 7b8:	89 45 f0             	mov    %eax,-0x10(%ebp)
  close(fd);
 7bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 7be:	89 04 24             	mov    %eax,(%esp)
 7c1:	e8 be 00 00 00       	call   884 <close>
  return r;
 7c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
 7c9:	c9                   	leave  
 7ca:	c3                   	ret    

000007cb <atoi>:

int
atoi(const char *s)
{
 7cb:	55                   	push   %ebp
 7cc:	89 e5                	mov    %esp,%ebp
 7ce:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
 7d1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 7d8:	eb 23                	jmp    7fd <atoi+0x32>
    n = n*10 + *s++ - '0';
 7da:	8b 55 fc             	mov    -0x4(%ebp),%edx
 7dd:	89 d0                	mov    %edx,%eax
 7df:	c1 e0 02             	shl    $0x2,%eax
 7e2:	01 d0                	add    %edx,%eax
 7e4:	01 c0                	add    %eax,%eax
 7e6:	89 c2                	mov    %eax,%edx
 7e8:	8b 45 08             	mov    0x8(%ebp),%eax
 7eb:	0f b6 00             	movzbl (%eax),%eax
 7ee:	0f be c0             	movsbl %al,%eax
 7f1:	01 d0                	add    %edx,%eax
 7f3:	83 e8 30             	sub    $0x30,%eax
 7f6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 7f9:	83 45 08 01          	addl   $0x1,0x8(%ebp)
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 7fd:	8b 45 08             	mov    0x8(%ebp),%eax
 800:	0f b6 00             	movzbl (%eax),%eax
 803:	3c 2f                	cmp    $0x2f,%al
 805:	7e 0a                	jle    811 <atoi+0x46>
 807:	8b 45 08             	mov    0x8(%ebp),%eax
 80a:	0f b6 00             	movzbl (%eax),%eax
 80d:	3c 39                	cmp    $0x39,%al
 80f:	7e c9                	jle    7da <atoi+0xf>
    n = n*10 + *s++ - '0';
  return n;
 811:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 814:	c9                   	leave  
 815:	c3                   	ret    

00000816 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
 816:	55                   	push   %ebp
 817:	89 e5                	mov    %esp,%ebp
 819:	83 ec 10             	sub    $0x10,%esp
  char *dst, *src;
  
  dst = vdst;
 81c:	8b 45 08             	mov    0x8(%ebp),%eax
 81f:	89 45 fc             	mov    %eax,-0x4(%ebp)
  src = vsrc;
 822:	8b 45 0c             	mov    0xc(%ebp),%eax
 825:	89 45 f8             	mov    %eax,-0x8(%ebp)
  while(n-- > 0)
 828:	eb 13                	jmp    83d <memmove+0x27>
    *dst++ = *src++;
 82a:	8b 45 f8             	mov    -0x8(%ebp),%eax
 82d:	0f b6 10             	movzbl (%eax),%edx
 830:	8b 45 fc             	mov    -0x4(%ebp),%eax
 833:	88 10                	mov    %dl,(%eax)
 835:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 839:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
{
  char *dst, *src;
  
  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 83d:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 841:	0f 9f c0             	setg   %al
 844:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
 848:	84 c0                	test   %al,%al
 84a:	75 de                	jne    82a <memmove+0x14>
    *dst++ = *src++;
  return vdst;
 84c:	8b 45 08             	mov    0x8(%ebp),%eax
}
 84f:	c9                   	leave  
 850:	c3                   	ret    
 851:	90                   	nop
 852:	90                   	nop
 853:	90                   	nop

00000854 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 854:	b8 01 00 00 00       	mov    $0x1,%eax
 859:	cd 40                	int    $0x40
 85b:	c3                   	ret    

0000085c <exit>:
SYSCALL(exit)
 85c:	b8 02 00 00 00       	mov    $0x2,%eax
 861:	cd 40                	int    $0x40
 863:	c3                   	ret    

00000864 <wait>:
SYSCALL(wait)
 864:	b8 03 00 00 00       	mov    $0x3,%eax
 869:	cd 40                	int    $0x40
 86b:	c3                   	ret    

0000086c <pipe>:
SYSCALL(pipe)
 86c:	b8 04 00 00 00       	mov    $0x4,%eax
 871:	cd 40                	int    $0x40
 873:	c3                   	ret    

00000874 <read>:
SYSCALL(read)
 874:	b8 05 00 00 00       	mov    $0x5,%eax
 879:	cd 40                	int    $0x40
 87b:	c3                   	ret    

0000087c <write>:
SYSCALL(write)
 87c:	b8 10 00 00 00       	mov    $0x10,%eax
 881:	cd 40                	int    $0x40
 883:	c3                   	ret    

00000884 <close>:
SYSCALL(close)
 884:	b8 15 00 00 00       	mov    $0x15,%eax
 889:	cd 40                	int    $0x40
 88b:	c3                   	ret    

0000088c <kill>:
SYSCALL(kill)
 88c:	b8 06 00 00 00       	mov    $0x6,%eax
 891:	cd 40                	int    $0x40
 893:	c3                   	ret    

00000894 <exec>:
SYSCALL(exec)
 894:	b8 07 00 00 00       	mov    $0x7,%eax
 899:	cd 40                	int    $0x40
 89b:	c3                   	ret    

0000089c <open>:
SYSCALL(open)
 89c:	b8 0f 00 00 00       	mov    $0xf,%eax
 8a1:	cd 40                	int    $0x40
 8a3:	c3                   	ret    

000008a4 <mknod>:
SYSCALL(mknod)
 8a4:	b8 11 00 00 00       	mov    $0x11,%eax
 8a9:	cd 40                	int    $0x40
 8ab:	c3                   	ret    

000008ac <unlink>:
SYSCALL(unlink)
 8ac:	b8 12 00 00 00       	mov    $0x12,%eax
 8b1:	cd 40                	int    $0x40
 8b3:	c3                   	ret    

000008b4 <fstat>:
SYSCALL(fstat)
 8b4:	b8 08 00 00 00       	mov    $0x8,%eax
 8b9:	cd 40                	int    $0x40
 8bb:	c3                   	ret    

000008bc <link>:
SYSCALL(link)
 8bc:	b8 13 00 00 00       	mov    $0x13,%eax
 8c1:	cd 40                	int    $0x40
 8c3:	c3                   	ret    

000008c4 <mkdir>:
SYSCALL(mkdir)
 8c4:	b8 14 00 00 00       	mov    $0x14,%eax
 8c9:	cd 40                	int    $0x40
 8cb:	c3                   	ret    

000008cc <chdir>:
SYSCALL(chdir)
 8cc:	b8 09 00 00 00       	mov    $0x9,%eax
 8d1:	cd 40                	int    $0x40
 8d3:	c3                   	ret    

000008d4 <dup>:
SYSCALL(dup)
 8d4:	b8 0a 00 00 00       	mov    $0xa,%eax
 8d9:	cd 40                	int    $0x40
 8db:	c3                   	ret    

000008dc <getpid>:
SYSCALL(getpid)
 8dc:	b8 0b 00 00 00       	mov    $0xb,%eax
 8e1:	cd 40                	int    $0x40
 8e3:	c3                   	ret    

000008e4 <sbrk>:
SYSCALL(sbrk)
 8e4:	b8 0c 00 00 00       	mov    $0xc,%eax
 8e9:	cd 40                	int    $0x40
 8eb:	c3                   	ret    

000008ec <sleep>:
SYSCALL(sleep)
 8ec:	b8 0d 00 00 00       	mov    $0xd,%eax
 8f1:	cd 40                	int    $0x40
 8f3:	c3                   	ret    

000008f4 <uptime>:
SYSCALL(uptime)
 8f4:	b8 0e 00 00 00       	mov    $0xe,%eax
 8f9:	cd 40                	int    $0x40
 8fb:	c3                   	ret    

000008fc <wait_stat>:
SYSCALL(wait_stat)
 8fc:	b8 16 00 00 00       	mov    $0x16,%eax
 901:	cd 40                	int    $0x40
 903:	c3                   	ret    

00000904 <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
 904:	55                   	push   %ebp
 905:	89 e5                	mov    %esp,%ebp
 907:	83 ec 28             	sub    $0x28,%esp
 90a:	8b 45 0c             	mov    0xc(%ebp),%eax
 90d:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
 910:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 917:	00 
 918:	8d 45 f4             	lea    -0xc(%ebp),%eax
 91b:	89 44 24 04          	mov    %eax,0x4(%esp)
 91f:	8b 45 08             	mov    0x8(%ebp),%eax
 922:	89 04 24             	mov    %eax,(%esp)
 925:	e8 52 ff ff ff       	call   87c <write>
}
 92a:	c9                   	leave  
 92b:	c3                   	ret    

0000092c <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
 92c:	55                   	push   %ebp
 92d:	89 e5                	mov    %esp,%ebp
 92f:	83 ec 48             	sub    $0x48,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 932:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
 939:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 93d:	74 17                	je     956 <printint+0x2a>
 93f:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 943:	79 11                	jns    956 <printint+0x2a>
    neg = 1;
 945:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
 94c:	8b 45 0c             	mov    0xc(%ebp),%eax
 94f:	f7 d8                	neg    %eax
 951:	89 45 ec             	mov    %eax,-0x14(%ebp)
 954:	eb 06                	jmp    95c <printint+0x30>
  } else {
    x = xx;
 956:	8b 45 0c             	mov    0xc(%ebp),%eax
 959:	89 45 ec             	mov    %eax,-0x14(%ebp)
  }

  i = 0;
 95c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  do{
    buf[i++] = digits[x % base];
 963:	8b 4d 10             	mov    0x10(%ebp),%ecx
 966:	8b 45 ec             	mov    -0x14(%ebp),%eax
 969:	ba 00 00 00 00       	mov    $0x0,%edx
 96e:	f7 f1                	div    %ecx
 970:	89 d0                	mov    %edx,%eax
 972:	0f b6 90 78 10 00 00 	movzbl 0x1078(%eax),%edx
 979:	8d 45 dc             	lea    -0x24(%ebp),%eax
 97c:	03 45 f4             	add    -0xc(%ebp),%eax
 97f:	88 10                	mov    %dl,(%eax)
 981:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  }while((x /= base) != 0);
 985:	8b 55 10             	mov    0x10(%ebp),%edx
 988:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 98b:	8b 45 ec             	mov    -0x14(%ebp),%eax
 98e:	ba 00 00 00 00       	mov    $0x0,%edx
 993:	f7 75 d4             	divl   -0x2c(%ebp)
 996:	89 45 ec             	mov    %eax,-0x14(%ebp)
 999:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 99d:	75 c4                	jne    963 <printint+0x37>
  if(neg)
 99f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 9a3:	74 2a                	je     9cf <printint+0xa3>
    buf[i++] = '-';
 9a5:	8d 45 dc             	lea    -0x24(%ebp),%eax
 9a8:	03 45 f4             	add    -0xc(%ebp),%eax
 9ab:	c6 00 2d             	movb   $0x2d,(%eax)
 9ae:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)

  while(--i >= 0)
 9b2:	eb 1b                	jmp    9cf <printint+0xa3>
    putc(fd, buf[i]);
 9b4:	8d 45 dc             	lea    -0x24(%ebp),%eax
 9b7:	03 45 f4             	add    -0xc(%ebp),%eax
 9ba:	0f b6 00             	movzbl (%eax),%eax
 9bd:	0f be c0             	movsbl %al,%eax
 9c0:	89 44 24 04          	mov    %eax,0x4(%esp)
 9c4:	8b 45 08             	mov    0x8(%ebp),%eax
 9c7:	89 04 24             	mov    %eax,(%esp)
 9ca:	e8 35 ff ff ff       	call   904 <putc>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 9cf:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
 9d3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 9d7:	79 db                	jns    9b4 <printint+0x88>
    putc(fd, buf[i]);
}
 9d9:	c9                   	leave  
 9da:	c3                   	ret    

000009db <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 9db:	55                   	push   %ebp
 9dc:	89 e5                	mov    %esp,%ebp
 9de:	83 ec 38             	sub    $0x38,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 9e1:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  ap = (uint*)(void*)&fmt + 1;
 9e8:	8d 45 0c             	lea    0xc(%ebp),%eax
 9eb:	83 c0 04             	add    $0x4,%eax
 9ee:	89 45 e8             	mov    %eax,-0x18(%ebp)
  for(i = 0; fmt[i]; i++){
 9f1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 9f8:	e9 7d 01 00 00       	jmp    b7a <printf+0x19f>
    c = fmt[i] & 0xff;
 9fd:	8b 55 0c             	mov    0xc(%ebp),%edx
 a00:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a03:	01 d0                	add    %edx,%eax
 a05:	0f b6 00             	movzbl (%eax),%eax
 a08:	0f be c0             	movsbl %al,%eax
 a0b:	25 ff 00 00 00       	and    $0xff,%eax
 a10:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    if(state == 0){
 a13:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 a17:	75 2c                	jne    a45 <printf+0x6a>
      if(c == '%'){
 a19:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 a1d:	75 0c                	jne    a2b <printf+0x50>
        state = '%';
 a1f:	c7 45 ec 25 00 00 00 	movl   $0x25,-0x14(%ebp)
 a26:	e9 4b 01 00 00       	jmp    b76 <printf+0x19b>
      } else {
        putc(fd, c);
 a2b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 a2e:	0f be c0             	movsbl %al,%eax
 a31:	89 44 24 04          	mov    %eax,0x4(%esp)
 a35:	8b 45 08             	mov    0x8(%ebp),%eax
 a38:	89 04 24             	mov    %eax,(%esp)
 a3b:	e8 c4 fe ff ff       	call   904 <putc>
 a40:	e9 31 01 00 00       	jmp    b76 <printf+0x19b>
      }
    } else if(state == '%'){
 a45:	83 7d ec 25          	cmpl   $0x25,-0x14(%ebp)
 a49:	0f 85 27 01 00 00    	jne    b76 <printf+0x19b>
      if(c == 'd'){
 a4f:	83 7d e4 64          	cmpl   $0x64,-0x1c(%ebp)
 a53:	75 2d                	jne    a82 <printf+0xa7>
        printint(fd, *ap, 10, 1);
 a55:	8b 45 e8             	mov    -0x18(%ebp),%eax
 a58:	8b 00                	mov    (%eax),%eax
 a5a:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 a61:	00 
 a62:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 a69:	00 
 a6a:	89 44 24 04          	mov    %eax,0x4(%esp)
 a6e:	8b 45 08             	mov    0x8(%ebp),%eax
 a71:	89 04 24             	mov    %eax,(%esp)
 a74:	e8 b3 fe ff ff       	call   92c <printint>
        ap++;
 a79:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 a7d:	e9 ed 00 00 00       	jmp    b6f <printf+0x194>
      } else if(c == 'x' || c == 'p'){
 a82:	83 7d e4 78          	cmpl   $0x78,-0x1c(%ebp)
 a86:	74 06                	je     a8e <printf+0xb3>
 a88:	83 7d e4 70          	cmpl   $0x70,-0x1c(%ebp)
 a8c:	75 2d                	jne    abb <printf+0xe0>
        printint(fd, *ap, 16, 0);
 a8e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 a91:	8b 00                	mov    (%eax),%eax
 a93:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 a9a:	00 
 a9b:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 aa2:	00 
 aa3:	89 44 24 04          	mov    %eax,0x4(%esp)
 aa7:	8b 45 08             	mov    0x8(%ebp),%eax
 aaa:	89 04 24             	mov    %eax,(%esp)
 aad:	e8 7a fe ff ff       	call   92c <printint>
        ap++;
 ab2:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 ab6:	e9 b4 00 00 00       	jmp    b6f <printf+0x194>
      } else if(c == 's'){
 abb:	83 7d e4 73          	cmpl   $0x73,-0x1c(%ebp)
 abf:	75 46                	jne    b07 <printf+0x12c>
        s = (char*)*ap;
 ac1:	8b 45 e8             	mov    -0x18(%ebp),%eax
 ac4:	8b 00                	mov    (%eax),%eax
 ac6:	89 45 f4             	mov    %eax,-0xc(%ebp)
        ap++;
 ac9:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
        if(s == 0)
 acd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 ad1:	75 27                	jne    afa <printf+0x11f>
          s = "(null)";
 ad3:	c7 45 f4 12 0e 00 00 	movl   $0xe12,-0xc(%ebp)
        while(*s != 0){
 ada:	eb 1e                	jmp    afa <printf+0x11f>
          putc(fd, *s);
 adc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 adf:	0f b6 00             	movzbl (%eax),%eax
 ae2:	0f be c0             	movsbl %al,%eax
 ae5:	89 44 24 04          	mov    %eax,0x4(%esp)
 ae9:	8b 45 08             	mov    0x8(%ebp),%eax
 aec:	89 04 24             	mov    %eax,(%esp)
 aef:	e8 10 fe ff ff       	call   904 <putc>
          s++;
 af4:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 af8:	eb 01                	jmp    afb <printf+0x120>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 afa:	90                   	nop
 afb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 afe:	0f b6 00             	movzbl (%eax),%eax
 b01:	84 c0                	test   %al,%al
 b03:	75 d7                	jne    adc <printf+0x101>
 b05:	eb 68                	jmp    b6f <printf+0x194>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 b07:	83 7d e4 63          	cmpl   $0x63,-0x1c(%ebp)
 b0b:	75 1d                	jne    b2a <printf+0x14f>
        putc(fd, *ap);
 b0d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 b10:	8b 00                	mov    (%eax),%eax
 b12:	0f be c0             	movsbl %al,%eax
 b15:	89 44 24 04          	mov    %eax,0x4(%esp)
 b19:	8b 45 08             	mov    0x8(%ebp),%eax
 b1c:	89 04 24             	mov    %eax,(%esp)
 b1f:	e8 e0 fd ff ff       	call   904 <putc>
        ap++;
 b24:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 b28:	eb 45                	jmp    b6f <printf+0x194>
      } else if(c == '%'){
 b2a:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 b2e:	75 17                	jne    b47 <printf+0x16c>
        putc(fd, c);
 b30:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 b33:	0f be c0             	movsbl %al,%eax
 b36:	89 44 24 04          	mov    %eax,0x4(%esp)
 b3a:	8b 45 08             	mov    0x8(%ebp),%eax
 b3d:	89 04 24             	mov    %eax,(%esp)
 b40:	e8 bf fd ff ff       	call   904 <putc>
 b45:	eb 28                	jmp    b6f <printf+0x194>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 b47:	c7 44 24 04 25 00 00 	movl   $0x25,0x4(%esp)
 b4e:	00 
 b4f:	8b 45 08             	mov    0x8(%ebp),%eax
 b52:	89 04 24             	mov    %eax,(%esp)
 b55:	e8 aa fd ff ff       	call   904 <putc>
        putc(fd, c);
 b5a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 b5d:	0f be c0             	movsbl %al,%eax
 b60:	89 44 24 04          	mov    %eax,0x4(%esp)
 b64:	8b 45 08             	mov    0x8(%ebp),%eax
 b67:	89 04 24             	mov    %eax,(%esp)
 b6a:	e8 95 fd ff ff       	call   904 <putc>
      }
      state = 0;
 b6f:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 b76:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 b7a:	8b 55 0c             	mov    0xc(%ebp),%edx
 b7d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b80:	01 d0                	add    %edx,%eax
 b82:	0f b6 00             	movzbl (%eax),%eax
 b85:	84 c0                	test   %al,%al
 b87:	0f 85 70 fe ff ff    	jne    9fd <printf+0x22>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 b8d:	c9                   	leave  
 b8e:	c3                   	ret    
 b8f:	90                   	nop

00000b90 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b90:	55                   	push   %ebp
 b91:	89 e5                	mov    %esp,%ebp
 b93:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
 b96:	8b 45 08             	mov    0x8(%ebp),%eax
 b99:	83 e8 08             	sub    $0x8,%eax
 b9c:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b9f:	a1 a8 10 00 00       	mov    0x10a8,%eax
 ba4:	89 45 fc             	mov    %eax,-0x4(%ebp)
 ba7:	eb 24                	jmp    bcd <free+0x3d>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ba9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 bac:	8b 00                	mov    (%eax),%eax
 bae:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 bb1:	77 12                	ja     bc5 <free+0x35>
 bb3:	8b 45 f8             	mov    -0x8(%ebp),%eax
 bb6:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 bb9:	77 24                	ja     bdf <free+0x4f>
 bbb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 bbe:	8b 00                	mov    (%eax),%eax
 bc0:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 bc3:	77 1a                	ja     bdf <free+0x4f>
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 bc5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 bc8:	8b 00                	mov    (%eax),%eax
 bca:	89 45 fc             	mov    %eax,-0x4(%ebp)
 bcd:	8b 45 f8             	mov    -0x8(%ebp),%eax
 bd0:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 bd3:	76 d4                	jbe    ba9 <free+0x19>
 bd5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 bd8:	8b 00                	mov    (%eax),%eax
 bda:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 bdd:	76 ca                	jbe    ba9 <free+0x19>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
 bdf:	8b 45 f8             	mov    -0x8(%ebp),%eax
 be2:	8b 40 04             	mov    0x4(%eax),%eax
 be5:	c1 e0 03             	shl    $0x3,%eax
 be8:	89 c2                	mov    %eax,%edx
 bea:	03 55 f8             	add    -0x8(%ebp),%edx
 bed:	8b 45 fc             	mov    -0x4(%ebp),%eax
 bf0:	8b 00                	mov    (%eax),%eax
 bf2:	39 c2                	cmp    %eax,%edx
 bf4:	75 24                	jne    c1a <free+0x8a>
    bp->s.size += p->s.ptr->s.size;
 bf6:	8b 45 f8             	mov    -0x8(%ebp),%eax
 bf9:	8b 50 04             	mov    0x4(%eax),%edx
 bfc:	8b 45 fc             	mov    -0x4(%ebp),%eax
 bff:	8b 00                	mov    (%eax),%eax
 c01:	8b 40 04             	mov    0x4(%eax),%eax
 c04:	01 c2                	add    %eax,%edx
 c06:	8b 45 f8             	mov    -0x8(%ebp),%eax
 c09:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
 c0c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 c0f:	8b 00                	mov    (%eax),%eax
 c11:	8b 10                	mov    (%eax),%edx
 c13:	8b 45 f8             	mov    -0x8(%ebp),%eax
 c16:	89 10                	mov    %edx,(%eax)
 c18:	eb 0a                	jmp    c24 <free+0x94>
  } else
    bp->s.ptr = p->s.ptr;
 c1a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 c1d:	8b 10                	mov    (%eax),%edx
 c1f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 c22:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
 c24:	8b 45 fc             	mov    -0x4(%ebp),%eax
 c27:	8b 40 04             	mov    0x4(%eax),%eax
 c2a:	c1 e0 03             	shl    $0x3,%eax
 c2d:	03 45 fc             	add    -0x4(%ebp),%eax
 c30:	3b 45 f8             	cmp    -0x8(%ebp),%eax
 c33:	75 20                	jne    c55 <free+0xc5>
    p->s.size += bp->s.size;
 c35:	8b 45 fc             	mov    -0x4(%ebp),%eax
 c38:	8b 50 04             	mov    0x4(%eax),%edx
 c3b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 c3e:	8b 40 04             	mov    0x4(%eax),%eax
 c41:	01 c2                	add    %eax,%edx
 c43:	8b 45 fc             	mov    -0x4(%ebp),%eax
 c46:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 c49:	8b 45 f8             	mov    -0x8(%ebp),%eax
 c4c:	8b 10                	mov    (%eax),%edx
 c4e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 c51:	89 10                	mov    %edx,(%eax)
 c53:	eb 08                	jmp    c5d <free+0xcd>
  } else
    p->s.ptr = bp;
 c55:	8b 45 fc             	mov    -0x4(%ebp),%eax
 c58:	8b 55 f8             	mov    -0x8(%ebp),%edx
 c5b:	89 10                	mov    %edx,(%eax)
  freep = p;
 c5d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 c60:	a3 a8 10 00 00       	mov    %eax,0x10a8
}
 c65:	c9                   	leave  
 c66:	c3                   	ret    

00000c67 <morecore>:

static Header*
morecore(uint nu)
{
 c67:	55                   	push   %ebp
 c68:	89 e5                	mov    %esp,%ebp
 c6a:	83 ec 28             	sub    $0x28,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
 c6d:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 c74:	77 07                	ja     c7d <morecore+0x16>
    nu = 4096;
 c76:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
 c7d:	8b 45 08             	mov    0x8(%ebp),%eax
 c80:	c1 e0 03             	shl    $0x3,%eax
 c83:	89 04 24             	mov    %eax,(%esp)
 c86:	e8 59 fc ff ff       	call   8e4 <sbrk>
 c8b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(p == (char*)-1)
 c8e:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
 c92:	75 07                	jne    c9b <morecore+0x34>
    return 0;
 c94:	b8 00 00 00 00       	mov    $0x0,%eax
 c99:	eb 22                	jmp    cbd <morecore+0x56>
  hp = (Header*)p;
 c9b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c9e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  hp->s.size = nu;
 ca1:	8b 45 f0             	mov    -0x10(%ebp),%eax
 ca4:	8b 55 08             	mov    0x8(%ebp),%edx
 ca7:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
 caa:	8b 45 f0             	mov    -0x10(%ebp),%eax
 cad:	83 c0 08             	add    $0x8,%eax
 cb0:	89 04 24             	mov    %eax,(%esp)
 cb3:	e8 d8 fe ff ff       	call   b90 <free>
  return freep;
 cb8:	a1 a8 10 00 00       	mov    0x10a8,%eax
}
 cbd:	c9                   	leave  
 cbe:	c3                   	ret    

00000cbf <malloc>:

void*
malloc(uint nbytes)
{
 cbf:	55                   	push   %ebp
 cc0:	89 e5                	mov    %esp,%ebp
 cc2:	83 ec 28             	sub    $0x28,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 cc5:	8b 45 08             	mov    0x8(%ebp),%eax
 cc8:	83 c0 07             	add    $0x7,%eax
 ccb:	c1 e8 03             	shr    $0x3,%eax
 cce:	83 c0 01             	add    $0x1,%eax
 cd1:	89 45 ec             	mov    %eax,-0x14(%ebp)
  if((prevp = freep) == 0){
 cd4:	a1 a8 10 00 00       	mov    0x10a8,%eax
 cd9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 cdc:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 ce0:	75 23                	jne    d05 <malloc+0x46>
    base.s.ptr = freep = prevp = &base;
 ce2:	c7 45 f0 a0 10 00 00 	movl   $0x10a0,-0x10(%ebp)
 ce9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 cec:	a3 a8 10 00 00       	mov    %eax,0x10a8
 cf1:	a1 a8 10 00 00       	mov    0x10a8,%eax
 cf6:	a3 a0 10 00 00       	mov    %eax,0x10a0
    base.s.size = 0;
 cfb:	c7 05 a4 10 00 00 00 	movl   $0x0,0x10a4
 d02:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 d05:	8b 45 f0             	mov    -0x10(%ebp),%eax
 d08:	8b 00                	mov    (%eax),%eax
 d0a:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(p->s.size >= nunits){
 d0d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 d10:	8b 40 04             	mov    0x4(%eax),%eax
 d13:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 d16:	72 4d                	jb     d65 <malloc+0xa6>
      if(p->s.size == nunits)
 d18:	8b 45 f4             	mov    -0xc(%ebp),%eax
 d1b:	8b 40 04             	mov    0x4(%eax),%eax
 d1e:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 d21:	75 0c                	jne    d2f <malloc+0x70>
        prevp->s.ptr = p->s.ptr;
 d23:	8b 45 f4             	mov    -0xc(%ebp),%eax
 d26:	8b 10                	mov    (%eax),%edx
 d28:	8b 45 f0             	mov    -0x10(%ebp),%eax
 d2b:	89 10                	mov    %edx,(%eax)
 d2d:	eb 26                	jmp    d55 <malloc+0x96>
      else {
        p->s.size -= nunits;
 d2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 d32:	8b 40 04             	mov    0x4(%eax),%eax
 d35:	89 c2                	mov    %eax,%edx
 d37:	2b 55 ec             	sub    -0x14(%ebp),%edx
 d3a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 d3d:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
 d40:	8b 45 f4             	mov    -0xc(%ebp),%eax
 d43:	8b 40 04             	mov    0x4(%eax),%eax
 d46:	c1 e0 03             	shl    $0x3,%eax
 d49:	01 45 f4             	add    %eax,-0xc(%ebp)
        p->s.size = nunits;
 d4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 d4f:	8b 55 ec             	mov    -0x14(%ebp),%edx
 d52:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
 d55:	8b 45 f0             	mov    -0x10(%ebp),%eax
 d58:	a3 a8 10 00 00       	mov    %eax,0x10a8
      return (void*)(p + 1);
 d5d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 d60:	83 c0 08             	add    $0x8,%eax
 d63:	eb 38                	jmp    d9d <malloc+0xde>
    }
    if(p == freep)
 d65:	a1 a8 10 00 00       	mov    0x10a8,%eax
 d6a:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 d6d:	75 1b                	jne    d8a <malloc+0xcb>
      if((p = morecore(nunits)) == 0)
 d6f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 d72:	89 04 24             	mov    %eax,(%esp)
 d75:	e8 ed fe ff ff       	call   c67 <morecore>
 d7a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 d7d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 d81:	75 07                	jne    d8a <malloc+0xcb>
        return 0;
 d83:	b8 00 00 00 00       	mov    $0x0,%eax
 d88:	eb 13                	jmp    d9d <malloc+0xde>
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 d8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 d8d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 d90:	8b 45 f4             	mov    -0xc(%ebp),%eax
 d93:	8b 00                	mov    (%eax),%eax
 d95:	89 45 f4             	mov    %eax,-0xc(%ebp)
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
 d98:	e9 70 ff ff ff       	jmp    d0d <malloc+0x4e>
}
 d9d:	c9                   	leave  
 d9e:	c3                   	ret    
