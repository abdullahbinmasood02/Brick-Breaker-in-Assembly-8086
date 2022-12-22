.model small
.stack 100h
.data  
                                   
string DB "BRICK$"
str DB "BREAKER 2D$"
string1 DB "ENTER YOUR NAME$"  
name1 DB 30 dup (?)
xAxis DW 100
yAxis DW 50
newXaxis DW 10  
limit DW 200
lives DB "3$"
var3 DB 0
x1 DW 5
check_chances DW ?
end_life DB "0$";
lives_display DB "LIVES: $"
y1 DW 0
brick_line1 DW 5
end_game_str DB "GAME ENDED $"
helper DW ?
ball_speed_x DW 2 ;speed of ball in x axis
ball_speed_y DW 3 ; speed of ball in y axis

brick_size DW ?

brick_size_v DW ?

brick_y DW ?

score_display DB "SCORE:$"
score_10_1 db "1$"
score_10_2 db "0$"
score_11 db "1$"
score_12 db "2$"
score_13 db "3$"
score_14 db "4$"
score_15 db "5$"
score_16 db "6$"
score_17 db "7$"
score_18 db "8$"
score_19 db "9$"
score_20_1 db "2$"
score_30_1 db "3$"

score_count db "0$"
score_count2 db "0$"

brick_1_color dw 1
brick_2_color dw 2
brick_3_color dw 3
brick_4_color dw 4
brick_5_color dw 5
brick_6_color dw 6

brick_7_color dw 3
brick_8_color dw 5
brick_9_color dw 2
brick_10_color dw 6
brick_11_color dw 1
brick_12_color dw 4

brick_13_color dw 6
brick_14_color dw 4
brick_15_color dw 1
brick_16_color dw 2
brick_17_color dw 5
brick_18_color dw 3

brick_29_color dw ?
brick_30_color dw ?

brick_1_color_2 dw 1
brick_2_color_2 dw 2
brick_3_color_2 dw 3
brick_4_color_2 dw 4
brick_5_color_2 dw 5
brick_6_color_2 dw 6

brick_6_color_3 dw 1
brick_5_color_3 dw 2
brick_4_color_3 dw 3
brick_3_color_3 dw 4
brick_2_color_3 dw 5
brick_1_color_3 dw 6


ball_x DW 50 ; initial x pixel of ball
ball_y DW 100 ; intial y pixel of ball

ball_size DW 5 ; size of the ball
paddle_x DW ? ; intial x pixel of the paddle
paddle_y DW 180 ; intial y pixel of the paddle
paddle_x_new DW ?
paddle_x_end DW ?
paddle_length DW 20
check_inc DW 0
paddle_movement_right DW 0
paddle_movement_left DW 0
screen_width DW 299 ; width of playing screen display = 300 pixels
screen_height DW 188 ; height of playing screen display = 190 pixels
brick_length DW 20
brick_height DW 5
brick_help DW ?

time_c DB 0
score dw 0

tempvar dw 0

temp1 dw 0
temp2 dw 0
temp3 dw 0
temp4 dw 0
temp5 dw 0
temp6 dw 0
temp7 dw 0
temp8 dw 0
temp9 dw 0
temp10 dw 0
temp11 dw 0
temp12 dw 0
temp13 dw 0
temp14 dw 0
temp15 dw 0
temp16 dw 0
temp17 dw 0
temp18 dw 0


temp1_2 dw 0
temp2_2 dw 0
temp3_2 dw 0
temp4_2 dw 0
temp5_2 dw 0
temp6_2 dw 0

temp1_3 dw 0
temp2_3 dw 0
temp3_3 dw 0
temp4_3 dw 0
temp5_3 dw 0
temp6_3 dw 0


temp29 dw 0
temp30 dw 0

instruc DB 0AH,0DH,"         ******* INSTRUCTIONS *******$"


WLCM          DB  0AH,0DH,"         *******************"
              DB  0AH,0DH,"                                 "
              DB  0AH,0DH,"              WELCOME TO         "
              DB  0AH,0DH,"                                 "
              DB  0AH,0DH,"             BRICK BREAKER       "
              DB  0AH,0DH,"                                 "
              DB  0AH,0DH,"         *********************$"

 
 INSTRUCTIONS            DB 0AH,0DH,"                                      "
             DB 0AH,0DH,"     USE ARROW KEYS TO MOVE LEFT/RIGHT"
             DB 0AH,0DH,"         "
             DB 0AH,0DH,"        YOU HAVE A MAX OF 3 CHANCES"
             DB 0AH,0DH,"         "
             DB 0AH,0DH,"        TRY TO SET A NEW HIGHSCORE$"
			 
			 WINNI           DB 0AH,0DH,"                                      "
             DB 0AH,0DH,"     "
             DB 0AH,0DH,"        CONGRATULATIONS ! "
			   DB 0AH,0DH,"         "
             DB 0AH,0DH,"        YOU HAVE WON THE GAME!"
             DB 0AH,0DH,"         "
             DB 0AH,0DH,"        PRESS ENTER TO GO BACK TO MENU$"

About        DB  0AH,0DH,"           *******    ABOUT   *******  $"


About1       DB 0AH,0DH," BRICK BREAKER IS A 2D GAME CREATED BY "
             DB 0AH,0DH, "                                 "
             DB 0AH,0DH, " AH TECHNOLOGIES LTD$"


credits1       DB 0AH,0DH, "           **    CREDITS   **$"

CREDITS       DB 0AH,0DH, "                                 "            
              DB 0AH,0DH, "                                 "
              DB 0AH,0DH,"       * ABDULLAH BIN MASOOD I210451"
              DB 0AH,0DH, "                                 "
              DB 0AH,0DH, "        * HAMZA UZAIR I210491$"

OPTIONS         DB 0AH,0DH, "         1)NEW GAME      "
                DB 0AH,0DH, "                                 "
                DB 0AH,0DH, "         2)CREDITS "
                DB 0AH,0DH, "                                 "
                DB 0AH,0DH, "         3)ABOUT         "
                DB 0AH,0DH, "                                 "
                DB 0AH,0DH, "         4)HIGHSCORES    "
                DB 0AH,0DH, "                                 "
                DB 0AH,0DH, "         5)INSTRUCTIONS  "
                DB 0AH,0DH, "                                 "
                DB 0AH,0DH, "         6)QUIT GAME     "  
                DB 0AH,0DH, "                                 "
                DB 0AH,0DH,"          CHOOSE YOUR OPTION $"
				
.code    

main proc
                 
    mov ax,@data                                    
    mov ds,ax
    mov bx,limit

    xor ax,ax
    mov ax,0
    mov check_chances,ax
    xor ax,ax
    mov ax,120
    mov paddle_x,ax
    xor ax,ax

 
mov ah, 0
        mov al, 13h
       int 10h
   ;call game_display
   ;call blocks_display
 
;    mov score_count,66
;   .if(score_count==66)
;   call run_game_2
;   .endif
   ;call run_game
  
 ; call run_game_3
 ;call run_game_2
   call first_page
   xor ax,ax
   xor bx,bx
   xor cx,cx
   xor dx,dx
;mov score_count,72
  .if(score_count>=66)
 
  
   call run_game_2
   .endif
   
   .if(score_count>=72)
   call run_game_3
   .endif
   
   
	.if(score_count>=78)
	call winning
	.endif
	
	;.endif
  
   call end_game
   

 
   
   mov ah,4ch
   int 21h
   main endp


display_brick macro x,y,color
    MOV CX, x
    MOV DX, y


   mov bx,x
   add bx,39
   mov brick_size,bx
   
   MOV bx,y
   add bx,9
   mov brick_size_v,bx



   mov ax,color
   mov bx,x
   call draw_brick
   
    comment @
    ;displayy_horizontal:
    .while(ax<=brick_size)
    MOV AH, 0Ch
    MOV AL, color
    INT 10H
    inc cx
    mov ax,cx
    sub ax, x
    cmp ax, brick_size
    ;jng displayy_horizontal
    .endw
   
   
    mov cx,x
    inc dx
    mov ax,dx
    sub ax,y
    cmp ax,brick_size
    jng displayy_horizontal
    @


    mov dx,0
    mov cx,0

endm


run_game proc


    mov ah, 0
    mov al, 13h
    int 10h

 sys_time_check:

   xor ax,ax
   xor bx,bx
   xor cx,cx
   xor dx,dx



   mov ah,2ch
   int 21h

   cmp dl,time_c
   je sys_time_check

   mov time_c,dl
 
   call game_display
   call blocks_display
 
   mov ax,ball_x
   mov bx,ball_y

   
   ;call game_display
   ;call black_brick_display
   call display_ball_black
   call move_ball
   call display_ball
  ; call black_brick_display
   call display_paddle_black
   call move_paddle
   call display_paddle        
   xor ax,ax
   mov ax,score
   .if(ax>1)
   jmp exit6
   .endif
 
   
  ; mov ax,3
   ;cmp ax,check_chances
   xor ax,ax
   mov ax,check_chances
   .if(ax>3)
   call end_game
  ; jmp exit6
   ;call run_game_2
   .endif
   
  xor ax,ax
 ; mov ax,score_count
  .if(score_count==66)
  jmp exit6
  .endif
       

   jmp sys_time_check
   ;call blocks_display
  ; call move_ball
  
  
  
  exit6:

  ret

run_game endp


;;;;;;;;;;;;;;;;;;;;;;;LEVEL 2 RUN GAME;;;;;;;;;;;;;;;;;;;;;;;;

run_game_2 proc


    mov ah, 0
    mov al, 13h
    int 10h

 
   
 sys_time_check_2:

   xor ax,ax
   xor bx,bx
   xor cx,cx
   xor dx,dx



   mov ah,2ch
   int 21h

   cmp dl,time_c
   je sys_time_check_2

   mov time_c,dl
 
   call game_display
   call blocks_display_2
 
   ;mov ax,ball_x
   ;mov bx,ball_y

   
   ;call game_display
   ;call black_brick_display
   call display_ball_black
   call move_ball
   call display_ball
  ; call black_brick_display
   call display_paddle_black
   call move_paddle
   call display_paddle        
  
 
   
  ; mov ax,3
   ;cmp ax,check_chances
   xor ax,ax
  ; mov ax,check_chances
   ;.if(ax>3)
   ;jmp exit6_2
   ;CALL end_game
   ;.endif
   .if(score_count==72)
   jmp exit6_2
   .endif
   
;mov ax,tempvar
 ;   .if(ax>=6)
  ;   jmp exit6_2
;.endif	 

   jmp sys_time_check_2
   ;call blocks_display
  ; call move_ball
  exit6_2:

  ret

run_game_2 endp


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL 2 RUN GAME END;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; LEVEL 3 ;;;;;;;;;;;;;;;;;;;;;;;;;;;


run_game_3 proc


    mov ah, 0
    mov al, 13h
    int 10h

 
   
 sys_time_check_3:

   xor ax,ax
   xor bx,bx
   xor cx,cx
   xor dx,dx



   mov ah,2ch
   int 21h

   cmp dl,time_c
   je sys_time_check_3

   mov time_c,dl
 
   call game_display
   call blocks_display_3
 
   ;mov ax,ball_x
   ;mov bx,ball_y

   
   ;call game_display
   ;call black_brick_display

   call display_ball_black
   call move_ball
   call display_ball
  ; call black_brick_display
   call display_paddle_black
   call move_paddle
   call display_paddle        
  
 
   
  ; mov ax,3
   ;cmp ax,check_chances
   xor ax,ax
  ; mov ax,check_chances
   ;.if(ax>3)
   ;jmp exit6_2
   ;CALL end_game
   ;.endif

   .if(score_count==77)
   jmp exit66_2
   .endif

.endif	 

   jmp sys_time_check_3
   ;call blocks_display
  ; call move_ball
  exit66_2:

  ret

run_game_3 endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

move_ball proc

    ;call blocks_display

  

    mov ax,ball_speed_x
    add ball_x,ax
                               
    mov ax,0
    cmp ball_x,ax
    jl opposite_speed_x
   
   


    mov ax,screen_width
    sub ax,ball_size
    cmp ball_x,ax
    jg opposite_speed_x



    mov ax,ball_speed_y
    add ball_y,ax

    mov ax,0
    cmp ball_y,ax
    jl opposite_speed_y

    mov ax,screen_height
    sub ax,ball_size
    cmp ball_y,ax
    jg opposite_speed_y

   
   
    mov ax,175   ;165
    cmp ball_y,ax
    je paddle_collision

    jmp exit1
   
    paddle_collision:
       
        xor ax,ax
        xor bx,bx
        mov ax,paddle_x
        sub ax,5
        mov bx,ax
        add bx,35

        cmp ball_x,ax
        jge detect_collision
        jmp exit1

        detect_collision:
           
            cmp ball_x,bx
            jle collide_final
            jmp exit1

            collide_final:

               
                NEG ball_speed_y


    jmp exit1

    opposite_speed_x:

        NEG ball_speed_x
        jmp exit1
       

    opposite_speed_y:

        NEG ball_speed_y
       



    exit1:

    xor ax,ax
    mov ax,175
    cmp ball_y,ax
    jg dec_lives
    jmp exit2

    ;call display_ball
    ;call black_brick_display

    dec_lives:

    dec lives
    inc check_chances
   
   
    again:
   mov ah,0
   int 16h
   cmp al,13
   je another_chance
   jne again
   another_chance:
   
   neg ball_speed_y

   exit2:
    ret

   

move_ball endp





end_game proc

mov ah, 0
mov al, 13h
int 10h

mov ah, 02h
mov dh, 10  ; y coordinate
mov dl, 50 ; x coordinate
int 10h
mov dx, offset end_game_str
mov ah, 9h
int 21h

againn:
 mov ah,0
int 16h
cmp al,13
je exit5
jne againn

exit5:

ret



end_game endp



draw_brick proc
   
    verti:
    mov cx,bx

    horiz:
    mov ah,0ch

    .if(ax==1)
    mov al,1
    .elseif(ax==2)
    mov al,2
    .elseif(ax==3)
    mov al,3
    .elseif(ax==4)
    mov al,4
    .elseif(ax==5)
    mov al,5
    .elseif(ax==6)
    mov al,6
    .elseif(ax==7)
    mov al,7
    .elseif(ax==8)
    mov al,8
    .elseif(ax==9)
    mov al,9
    .elseif(ax==10)
    mov al,10
    .elseif(ax==0)
    mov al,0
    .endif

    int 10h
    inc cx
    ;mov bx,cx
    cmp cx,brick_size
    jne horiz
   
   
    inc dx
    ;mov bx,dx
    cmp dx,brick_size_v
    jne verti

    ret
draw_brick endp




blocks_display proc

   

     xor cx,cx
    mov cx,score

  ;FIRST ROW OF BRICKS START

       mov brick_y,10



      ;  display_brick 10,brick_y,1


  mov bx,temp1
   
   .if(ball_x >= 10 && ball_x <=50 && ball_y <=20 && ball_y >=10)
   
.if(bx>=1)
jmp not_collide_brick_1
.elseif
jmp collide_brick_1
.endif
collide_brick_1:
call brick_sound
  mov ax,0
  mov brick_1_color,ax
          display_brick 10,10,brick_1_color
          inc bx
          mov temp1,bx
       inc score_count  
  NEG ball_speed_y
not_collide_brick_1:  
  mov ax,0
  mov brick_1_color,ax
           display_brick 10,10,brick_1_color
.if(ax==0)

    jmp continue1
 .endif
 
.elseif
         display_brick 10,10,brick_1_color

        .endif


continue1:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



        ;display_brick 60,brick_y,2


  mov bx,temp2
   
   .if(ball_x >= 60 && ball_x <=100 && ball_y <=20 && ball_y >=10)
   
.if(bx>=1)
jmp not_collide_brick_2
.elseif
jmp collide_brick_2
.endif
collide_brick_2:
call brick_sound
  mov ax,0
  mov brick_2_color,ax
          display_brick 60,10,brick_2_color
          inc bx
          mov temp2,bx  
         inc score_count
  NEG ball_speed_y
not_collide_brick_2:  
  mov ax,0
  mov brick_2_color,ax
           display_brick 60,10,brick_2_color
.if(ax==0)

    jmp continue2
 .endif
 
.elseif
         display_brick 60,10,brick_2_color

        .endif


continue2:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        ;display_brick 110,brick_y,3

  mov bx,temp3
   
   .if(ball_x >= 110 && ball_x <=150 && ball_y <=20 && ball_y >=10)
   
.if(bx>=1)
jmp not_collide_brick_3
.elseif
jmp collide_brick_3
.endif
collide_brick_3:
call brick_sound
  mov ax,0
  mov brick_3_color,ax
          display_brick 110,10,brick_3_color
          inc bx
          mov temp3,bx
        inc score_count    
  NEG ball_speed_y
not_collide_brick_3:  
  mov ax,0
  mov brick_3_color,ax
           display_brick 110,10,brick_3_color
.if(ax==0)

    jmp continue3
 .endif
 
.elseif
         display_brick 110,10,brick_3_color

        .endif


continue3:      

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;        display_brick 160,brick_y,1
 
          mov bx,temp4
   
   .if(ball_x >= 160 && ball_x <=200 && ball_y <=20 && ball_y >=10)
   
.if(bx>=1)
jmp not_collide_brick_4
.elseif
jmp collide_brick_4
.endif
collide_brick_4:
call brick_sound
  mov ax,0
  mov brick_4_color,ax
          display_brick 160,10,brick_4_color
          inc bx
          mov temp4,bx
       inc score_count    
  NEG ball_speed_y
not_collide_brick_4:  
  mov ax,0
  mov brick_4_color,ax
           display_brick 160,10,brick_4_color
.if(ax==0)

    jmp continue4
 .endif
 
.elseif
         display_brick 160,10,brick_4_color

        .endif


continue4:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;  display_brick 210,brick_y,2



          mov bx,temp5
   
   .if(ball_x >= 210 && ball_x <=250 && ball_y <=20 && ball_y >=10)
   
.if(bx>=1)
jmp not_collide_brick_5
.elseif
jmp collide_brick_5
.endif
collide_brick_5:
call brick_sound
  mov ax,0
  mov brick_5_color,ax
          display_brick 210,10,brick_5_color
          inc bx
          mov temp5,bx
         inc score_count    
  NEG ball_speed_y
not_collide_brick_5:  
  mov ax,0
  mov brick_5_color,ax
           display_brick 210,10,brick_5_color
.if(ax==0)

    jmp continue5
 .endif
 
.elseif
         display_brick 210,10,brick_5_color

        .endif


continue5:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        ;display_brick 260,brick_y,3

          mov bx,temp6
   
   .if(ball_x >= 260 && ball_x <=300 && ball_y <=20 && ball_y >=10)
   
.if(bx>=1)
jmp not_collide_brick_6
.elseif
jmp collide_brick_6
.endif
collide_brick_6:
call brick_sound
  mov ax,0
  mov brick_6_color,ax
          display_brick 260,10,brick_6_color
          inc bx
          mov temp6,bx
      inc score_count    
  NEG ball_speed_y
not_collide_brick_6:  
  mov ax,0
  mov brick_6_color,ax
           display_brick 260,10,brick_6_color
.if(ax==0)

    jmp continue6
 .endif
 
.elseif
         display_brick 260,10,brick_6_color

        .endif


continue6:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              ; FIRST ROW ENDS

        ;SECOND ROW OF BRICKS START
       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
       

mov bx,temp7
   
   .if(ball_x >= 10 && ball_x <=50 && ball_y <=40 && ball_y >=30)
   
.if(bx>=1)
jmp not_collide_brick_7
.elseif
jmp collide_brick_7
.endif
collide_brick_7:
call brick_sound
  mov ax,0
  mov brick_7_color,ax
          display_brick 10,30,brick_7_color
          inc bx
          mov temp7,bx
         inc score_count  
  NEG ball_speed_y
not_collide_brick_7:  
  mov ax,0
  mov brick_7_color,ax
           display_brick 10,30,brick_7_color
.if(ax==0)

    jmp continue7
 .endif
 
.elseif
         display_brick 10,30,brick_7_color

        .endif


continue7:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



        ;display_brick 60,brick_y,2


  mov bx,temp8
   
   .if(ball_x >= 60 && ball_x <=100 && ball_y <=40 && ball_y >=30)
   
.if(bx>=1)
jmp not_collide_brick_8
.elseif
jmp collide_brick_8
.endif
collide_brick_8:
call brick_sound
  mov ax,0
  mov brick_8_color,ax
          display_brick 60,30,brick_8_color
          inc bx
          mov temp8,bx  
        inc score_count  
  NEG ball_speed_y
not_collide_brick_8:  
  mov ax,0
  mov brick_8_color,ax
           display_brick 60,30,brick_8_color
.if(ax==0)

    jmp continue8
 .endif
 
.elseif
         display_brick 60,30,brick_8_color

        .endif


continue8:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        ;display_brick 110,brick_y,3

  mov bx,temp9
   
   .if(ball_x >= 110 && ball_x <=150 && ball_y <=40 && ball_y >=30)
   
.if(bx>=1)
jmp not_collide_brick_9
.elseif
jmp collide_brick_9
.endif
collide_brick_9:
call brick_sound
  mov ax,0
  mov brick_9_color,ax
          display_brick 110,30,brick_9_color
          inc bx
          mov temp9,bx
        inc score_count    
  NEG ball_speed_y
not_collide_brick_9:  
  mov ax,0
  mov brick_9_color,ax
           display_brick 110,30,brick_9_color
.if(ax==0)

    jmp continue9
 .endif
 
.elseif
         display_brick 110,30,brick_9_color

        .endif


continue9:      

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;        display_brick 160,brick_y,1
 
          mov bx,temp10
   
   .if(ball_x >= 160 && ball_x <=200 && ball_y <=40 && ball_y >=30)
   
.if(bx>=1)
jmp not_collide_brick_10
.elseif
jmp collide_brick_10
.endif
collide_brick_10:
call brick_sound
  mov ax,0
  mov brick_10_color,ax
          display_brick 160,30,brick_10_color
          inc bx
          mov temp10,bx
       inc score_count    
  NEG ball_speed_y
not_collide_brick_10:  
  mov ax,0
  mov brick_10_color,ax
           display_brick 160,30,brick_10_color
.if(ax==0)

    jmp continue10
 .endif
 
.elseif
         display_brick 160,30,brick_10_color

        .endif


continue10:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;  display_brick 210,brick_y,2



          mov bx,temp11
   
   .if(ball_x >= 210 && ball_x <=250 && ball_y <=40 && ball_y >=30)
   
.if(bx>=1)
jmp not_collide_brick_11
.elseif
jmp collide_brick_11
.endif
collide_brick_11:
call brick_sound
  mov ax,0
  mov brick_11_color,ax
          display_brick 210,30,brick_11_color
          inc bx
          mov temp11,bx
       inc score_count    
  NEG ball_speed_y
not_collide_brick_11:  
  mov ax,0
  mov brick_11_color,ax
           display_brick 210,30,brick_11_color
.if(ax==0)

    jmp continue11
 .endif
 
.elseif
         display_brick 210,30,brick_11_color

        .endif


continue11:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        ;display_brick 260,brick_y,3

          mov bx,temp12
   
   .if(ball_x >= 260 && ball_x <=300 && ball_y <=40 && ball_y >=30)
   
.if(bx>=1)
jmp not_collide_brick_12
.elseif
jmp collide_brick_12
.endif
collide_brick_12:
call brick_sound
  mov ax,0
  mov brick_12_color,ax
          display_brick 260,30,brick_12_color
          inc bx
          mov temp12,bx
      inc score_count    
  NEG ball_speed_y
not_collide_brick_12:  
  mov ax,0
  mov brick_12_color,ax
           display_brick 260,30,brick_12_color
.if(ax==0)

    jmp continue12
 .endif
 
.elseif
         display_brick 260,30,brick_12_color

        .endif


continue12:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



             ; SECOND ROW ENDS

               ;THIRD ROW OF BRICKS START
       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
       

mov bx,temp13
   
   .if(ball_x >= 10 && ball_x <=50 && ball_y <=60 && ball_y >=50)
   
.if(bx>=1)
jmp not_collide_brick_13
.elseif
jmp collide_brick_13
.endif
collide_brick_13:
call brick_sound
  mov ax,0
  mov brick_13_color,ax
          display_brick 10,50,brick_13_color
          inc bx
          mov temp13,bx
        inc score_count  
  NEG ball_speed_y
not_collide_brick_13:  
  mov ax,0
  mov brick_13_color,ax
           display_brick 10,50,brick_13_color
.if(ax==0)

    jmp continue13
 .endif
 
.elseif
         display_brick 10,50,brick_13_color

        .endif


continue13:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



        ;display_brick 60,brick_y,2


  mov bx,temp14
   
   .if(ball_x >= 60 && ball_x <=100 && ball_y <=60 && ball_y >=50)
   
.if(bx>=1)
jmp not_collide_brick_14
.elseif
jmp collide_brick_14
.endif
collide_brick_14:
call brick_sound
  mov ax,0
  mov brick_14_color,ax
          display_brick 60,50,brick_14_color
          inc bx
          mov temp14,bx
  inc score_count  
  NEG ball_speed_y
not_collide_brick_14:  
  mov ax,0
  mov brick_14_color,ax
           display_brick 60,50,brick_14_color
.if(ax==0)

    jmp continue14
 .endif
 
.elseif
         display_brick 60,50,brick_14_color

        .endif


continue14:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        ;display_brick 110,brick_y,3

  mov bx,temp15
   
   .if(ball_x >= 110 && ball_x <=150 && ball_y <=60 && ball_y >=50)
   
.if(bx>=1)
jmp not_collide_brick_15
.elseif
jmp collide_brick_15
.endif
collide_brick_15:
call brick_sound
  mov ax,0
  mov brick_15_color,ax
          display_brick 110,50,brick_15_color
          inc bx
          mov temp15,bx
          inc score_count    
  NEG ball_speed_y
not_collide_brick_15:  
  mov ax,0
  mov brick_15_color,ax
           display_brick 110,50,brick_15_color
.if(ax==0)

    jmp continue15
 .endif
 
.elseif
         display_brick 110,50,brick_15_color

        .endif


continue15:      

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;        display_brick 160,brick_y,1
 
          mov bx,temp16
   
   .if(ball_x >= 160 && ball_x <=200 && ball_y <=60 && ball_y >=50)
   
.if(bx>=1)
jmp not_collide_brick_16
.elseif
jmp collide_brick_16
.endif
collide_brick_16:
call brick_sound
  mov ax,0
  mov brick_16_color,ax
          display_brick 160,50,brick_16_color
          inc bx
          mov temp16,bx
        inc score_count    
  NEG ball_speed_y
not_collide_brick_16:  
  mov ax,0
  mov brick_16_color,ax
           display_brick 160,50,brick_16_color
.if(ax==0)

    jmp continue16
 .endif
 
.elseif
         display_brick 160,50,brick_16_color

        .endif


continue16:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;  display_brick 210,brick_y,2



          mov bx,temp17
 
   .if(ball_x >= 210 && ball_x <=250 && ball_y <=60 && ball_y >=50)
   
.if(bx>=1)
jmp not_collide_brick_17
.elseif
jmp collide_brick_17
.endif
collide_brick_17:
call brick_sound
  mov ax,0
  mov brick_17_color,ax
          display_brick 210,50,brick_17_color
          inc bx
          mov temp17,bx
          inc score_count    
  NEG ball_speed_y
not_collide_brick_17:  
  mov ax,0
  mov brick_17_color,ax
           display_brick 210,50,brick_17_color
.if(ax==0)

    jmp continue17
 .endif
 
.elseif
         display_brick 210,50,brick_17_color

        .endif


continue17:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        ;display_brick 260,brick_y,3

          mov bx,temp18
   
   .if(ball_x >= 260 && ball_x <=300 && ball_y <=60 && ball_y >=50)
   
.if(bx>=1)
jmp not_collide_brick_18
.elseif
jmp collide_brick_18
.endif
collide_brick_18:
  call brick_sound
  mov ax,0
  mov brick_18_color,ax
          display_brick 260,50,brick_18_color
          inc bx
          mov temp18,bx
           inc score_count
  NEG ball_speed_y
not_collide_brick_18:  
  mov ax,0
  mov brick_18_color,ax
           display_brick 260,50,brick_18_color
.if(ax==0)

    jmp continue18
 .endif
 
.elseif
         display_brick 260,50,brick_18_color

        .endif


continue18:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





     xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx
ret
blocks_display endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




blocks_display_2 proc

xor bx,bx
xor ax,ax

  mov bx,temp1_2
   
   .if(ball_x >= 10 && ball_x <=50 && ball_y <=19 && ball_y >=9)
   
   .if(brick_1_color_2==8)
   call brick_sound
 mov ax,0
  mov brick_1_color_2,ax
          display_brick 10,10,brick_1_color_2
          inc bx
          mov temp1_2,bx
       inc score_count 
  NEG ball_speed_y
 ; inc tempvar
;.endif
jmp continue1_2

.endif
   
.if(bx>=2)
jmp not_collide_brick_1_2
.elseif(bx==0)
jmp collide_brick_1_2
.elseif(bx==1)
jmp collide_break_1
.endif

collide_brick_1_2:
 NEG ball_speed_y
call brick_sound
;.if(bx==0)
  mov ax,8
  mov brick_1_color_2,ax
          display_brick 10,10,brick_1_color_2
          inc bx
          mov temp1_2,bx
      ; inc score_count  
  
  jmp continue1_2
;.elseif(bx==1)
collide_break_1:
call brick_sound
 mov ax,0
  mov brick_1_color_2,ax
          display_brick 10,10,brick_1_color_2
          inc bx
          mov temp1_2,bx
       ;inc score_count 
  NEG ball_speed_y
 ; inc tempvar
;.endif
jmp continue1_2

not_collide_brick_1_2:  
  mov ax,0
  mov brick_1_color_2,ax
           display_brick 10,10,brick_1_color_2
.if(ax==0)

    jmp continue1_2
 .endif
 
.elseif
         display_brick 10,10,brick_1_color_2

        .endif


continue1_2:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



        ;display_brick 60,brick_y,2


  mov bx,temp2_2
   
   .if(ball_x >= 60 && ball_x <=100 && ball_y <=19 && ball_y >=9)
   
   .if(brick_2_color_2==8)
   call brick_sound
   mov ax,0
  mov brick_2_color_2,ax
          display_brick 60,10,brick_2_color_2
          inc bx
          mov temp2_2,bx  
         inc score_count
		; inc tempvar
  NEG ball_speed_y
  jmp continue2_2
  .endif
   
   
.if(bx>=2)
jmp not_collide_brick_2_2
.elseif(bx==0)
jmp collide_brick_2_2
.elseif(bx==1)
jmp collide_break_2
.endif
collide_brick_2_2:
   NEG ball_speed_y
  call brick_sound
  mov ax,8
  mov brick_2_color_2,ax
          display_brick 60,10,brick_2_color_2
          inc bx
          mov temp2_2,bx  
       ;  inc score_count
 jmp continue2_2
  
collide_break_2:
call brick_sound
   mov ax,0
  mov brick_2_color_2,ax
          display_brick 60,10,brick_2_color_2
          inc bx
          mov temp2_2,bx  
      ;   inc score_count
		; inc tempvar
  NEG ball_speed_y
 
not_collide_brick_2_2:  
  mov ax,0
  mov brick_2_color_2,ax
           display_brick 60,10,brick_2_color_2
.if(ax==0)

    jmp continue2_2
 .endif
 
.elseif
         display_brick 60,10,brick_2_color_2

        .endif


continue2_2:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        ;display_brick 110,brick_y,3

  mov bx,temp3_2
   
   .if(ball_x >= 110 && ball_x <=150 && ball_y <=19 && ball_y >=9)
   
   .if(brick_3_color_2==8)
   call brick_sound
   mov ax,0
  mov brick_3_color_2,ax
          display_brick 110,10,brick_3_color_2
          inc bx
          mov temp3_2,bx
          inc score_count   
;inc tempvar		  
  NEG ball_speed_y
  jmp continue3_2
  .endif
   
.if(bx>=2)
jmp not_collide_brick_3_2
.elseif(bx==0)
jmp collide_brick_3_2
.elseif(bx==1)
jmp collide_break_3
.endif
collide_brick_3_2:
 NEG ball_speed_y
call brick_sound
  mov ax,8
  mov brick_3_color_2,ax
          display_brick 110,10,brick_3_color_2
          inc bx
          mov temp3_2,bx
       ;inc score_count    
  jmp continue3_2
  
collide_break_3:
call brick_sound
   mov ax,0
  mov brick_3_color_2,ax
          display_brick 110,10,brick_3_color_2
          inc bx
          mov temp3_2,bx
         ; inc score_count   
;inc tempvar		  
  NEG ball_speed_y
 
not_collide_brick_3_2:  
  mov ax,0
  mov brick_3_color_2,ax
           display_brick 110,10,brick_3_color_2
.if(ax==0)

    jmp continue3_2
 .endif
 
.elseif
         display_brick 110,10,brick_3_color_2

        .endif


continue3_2:      

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;        display_brick 160,brick_y,1
 
          mov bx,temp4_2
   
   .if(ball_x >= 160 && ball_x <=200 && ball_y <=19 && ball_y >=9)
   
   .if(brick_4_color_2==8)
   call brick_sound
  mov ax,0
  mov brick_4_color_2,ax
          display_brick 160,10,brick_4_color_2
          inc bx
          mov temp4_2,bx
      inc score_count   
;inc tempvar	  
  NEG ball_speed_y
  jmp continue4_2
  .endif
  
   
.if(bx>=2)
jmp not_collide_brick_4_2
.elseif(bx==0)
;call brick_sound
jmp collide_brick_4_2
.elseif(bx==1)
call brick_sound
jmp collide_break_4
.endif
collide_brick_4_2:
 NEG ball_speed_y
  call brick_sound

  mov ax,8
  mov brick_4_color_2,ax
          display_brick 160,10,brick_4_color_2
          inc bx
          mov temp4_2,bx
       ;inc score_count    
jmp continue4_2

collide_break_4:
 call brick_sound
  mov ax,0
  mov brick_4_color_2,ax
          display_brick 160,10,brick_4_color_2
          inc bx
          mov temp4_2,bx
      ;inc score_count   
;inc tempvar	  
  NEG ball_speed_y
  
not_collide_brick_4_2:  
  mov ax,0
  mov brick_4_color_2,ax
           display_brick 160,10,brick_4_color_2
.if(ax==0)

    jmp continue4_2
 .endif
 
.elseif
         display_brick 160,10,brick_4_color_2

        .endif


continue4_2:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;  display_brick 210,brick_y,2



          mov bx,temp5_2
   
   .if(ball_x >= 210 && ball_x <=250 && ball_y <=19 && ball_y >=9)
   
   .if(brick_5_color_2==8)
   call brick_sound
   mov ax,0
  mov brick_5_color_2,ax
          display_brick 210,10,brick_5_color_2
          inc bx
          mov temp5_2,bx
         inc score_count  
;inc tempvar		 
  NEG ball_speed_y
  jmp continue5_2
  .endif
   
.if(bx>=2)
jmp not_collide_brick_5_2
.elseif(bx==0)
jmp collide_brick_5_2
.elseif(bx==1)
jmp collide_break_5
.endif

collide_brick_5_2:
 NEG ball_speed_y
call brick_sound
  mov ax,8
  mov brick_5_color_2,ax
          display_brick 210,10,brick_5_color_2
          inc bx
          mov temp5_2,bx
         ;inc score_count    
jmp continue5_2
  
  collide_break_5:
  call brick_sound
   mov ax,0
  mov brick_5_color_2,ax
          display_brick 210,10,brick_5_color_2
          inc bx
          mov temp5_2,bx
        ; inc score_count  
;inc tempvar		 
  NEG ball_speed_y
  jmp continue5_2
  
not_collide_brick_5_2:  
  mov ax,0
  mov brick_5_color_2,ax
           display_brick 210,10,brick_5_color_2
.if(ax==0)

    jmp continue5_2
 .endif
 
.elseif
         display_brick 210,10,brick_5_color_2

        .endif


continue5_2:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        ;display_brick 260,brick_y,3

          mov bx,temp6_2
   
   .if(ball_x >= 260 && ball_x <=300 && ball_y <=19 && ball_y >=9)
   
   .if(brick_6_color_2==8)
   call brick_sound
    mov ax,0
  mov brick_6_color_2,ax
          display_brick 260,10,brick_6_color_2
          inc bx
          mov temp6_2,bx
;		  inc tempvar
          inc score_count    
  NEG ball_speed_y
  jmp continue6_2
  .endif
   
.if(bx>=2)
jmp not_collide_brick_6_2
.elseif(bx==0)
jmp collide_brick_6_2
.elseif(bx==1)
jmp collide_break_6
.endif
 
 collide_break_6:
 call brick_sound
    mov ax,0
  mov brick_6_color_2,ax
          display_brick 260,10,brick_6_color_2
          inc bx
          mov temp6_2,bx
;		  inc tempvar
         ; inc score_count    
  NEG ball_speed_y
  jmp continue6_2
  
  collide_brick_6_2:
 NEG ball_speed_y
call brick_sound
  mov ax,8
  mov brick_6_color_2,ax
          display_brick 260,10,brick_6_color_2
          inc bx
          mov temp6_2,bx
      ;inc score_count    
 jmp continue6_2
 
not_collide_brick_6_2:  

  mov ax,0
  mov brick_6_color_2,ax
           display_brick 260,10,brick_6_color_2
.if(ax==0)

    jmp continue6_2
 .endif
 
.elseif
         display_brick 260,10,brick_6_color_2

        .endif


continue6_2:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              ; FIRST ROW ENDS

        ;SECOND ROW OF BRICKS START
       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
       


xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx

ret
blocks_display_2 endp




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


blocks_display_3 proc

xor bx,bx
xor ax,ax


  mov bx,temp1_3
   
   .if(ball_x >= 10 && ball_x <=50 && ball_y <=19 && ball_y >=9)
   
   .if(brick_1_color_3==9)
    call brick_sound
 mov ax,0
  mov brick_1_color_3,ax
          display_brick 10,10,brick_1_color_3
          inc bx
          mov temp1_3,bx
       inc score_count 
  NEG ball_speed_y
  inc tempvar

jmp continue1_3
.endif
   
   .if(brick_1_color_3==8)
   call brick_sound
 mov ax,9
  mov brick_1_color_3,ax
          display_brick 10,10,brick_1_color_3
          inc bx
          mov temp1_3,bx
   ;    inc score_count 
  NEG ball_speed_y
  ;inc tempvar
;.endif
jmp continue1_3

.endif


   
.if(bx>=2)
jmp not_collide_brick_1_3
.elseif(bx==0)
jmp collide_brick_1_3
.elseif(bx==1)
jmp collide_break_1_3
.endif

collide_brick_1_3:
 NEG ball_speed_y
call brick_sound
;.if(bx==0)
  mov ax,8
  mov brick_1_color_3,ax
          display_brick 10,10,brick_1_color_3
          inc bx
          mov temp1_3,bx
      ; inc score_count  
  
  jmp continue1_3
;.elseif(bx==1)
collide_break_1_3:
call brick_sound
 mov ax,0
  mov brick_1_color_3,ax
          display_brick 10,10,brick_1_color_3
          inc bx
          mov temp1_3,bx
       ;inc score_count 
  NEG ball_speed_y
  inc tempvar
;.endif
jmp continue1_3

not_collide_brick_1_3:  
  mov ax,0
  mov brick_1_color_3,ax
           display_brick 10,10,brick_1_color_3
.if(ax==0)

    jmp continue1_3
 .endif
 
.elseif
         display_brick 10,10,brick_1_color_3

        .endif


continue1_3:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



        ;display_brick 60,brick_y,2


  mov bx,temp2_3
   
   .if(ball_x >= 60 && ball_x <=100 && ball_y <=19 && ball_y >=9)
   
    .if(brick_2_color_3==9)
   call brick_sound
   mov ax,0
  mov brick_2_color_3,ax
          display_brick 60,10,brick_2_color_3
          inc bx
          mov temp2_3,bx  
         inc score_count
		 inc tempvar
  NEG ball_speed_y
  jmp continue2_3
  .endif
   
   
   
   
   .if(brick_2_color_3==8)
   call brick_sound
   mov ax,9
  mov brick_2_color_3,ax
          display_brick 60,10,brick_2_color_3
          inc bx
          mov temp2_3,bx  
         ;inc score_count
		; inc tempvar
  NEG ball_speed_y
  jmp continue2_3
  .endif
   
   
.if(bx>=2)
jmp not_collide_brick_2_3
.elseif(bx==0)
jmp collide_brick_2_3
.elseif(bx==1)
jmp collide_break_2_3
.endif
collide_brick_2_3:
   NEG ball_speed_y
  call brick_sound
  mov ax,8
  mov brick_2_color_3,ax
          display_brick 60,10,brick_2_color_3
          inc bx
          mov temp2_3,bx  
       ;  inc score_count
 jmp continue2_3
  
collide_break_2_3:
call brick_sound
   mov ax,0
  mov brick_2_color_3,ax
          display_brick 60,10,brick_2_color_3
          inc bx
          mov temp2_3,bx  
      ;   inc score_count
		 inc tempvar
  NEG ball_speed_y
 
not_collide_brick_2_3:  
  mov ax,0
  mov brick_2_color_3,ax
           display_brick 60,10,brick_2_color_3
.if(ax==0)

    jmp continue2_3
 .endif
 
.elseif
         display_brick 60,10,brick_2_color_3

        .endif


continue2_3:

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        ;display_brick 110,brick_y,3

  mov bx,temp3_3
   
   .if(ball_x >= 110 && ball_x <=150 && ball_y <=19 && ball_y >=9)
   
    .if(brick_3_color_3==8)
   call brick_sound
   mov ax,0
  mov brick_3_color_3,ax
          display_brick 110,10,brick_3_color_3
          inc bx
          mov temp3_3,bx
          inc score_count   
inc tempvar		  
  NEG ball_speed_y
  jmp continue3_3
  .endif
   
   .if(brick_3_color_3==9)
   call brick_sound
   mov ax,8
  mov brick_3_color_3,ax
          display_brick 110,10,brick_3_color_3
          inc bx
          mov temp3_3,bx
        ;  inc score_count   
 ;inc tempvar		  
  NEG ball_speed_y
  jmp continue3_3
  .endif
   
.if(bx>=2)
jmp not_collide_brick_3_3
.elseif(bx==0)
jmp collide_brick_3_3
.elseif(bx==1)
jmp collide_break_3_3
.endif
collide_brick_3_3:
 NEG ball_speed_y
call brick_sound
  mov ax,9
  mov brick_3_color_3,ax
          display_brick 110,10,brick_3_color_3
          inc bx
          mov temp3_3,bx
       ;inc score_count    
  jmp continue3_3
  
collide_break_3_3:
call brick_sound
   mov ax,0
  mov brick_3_color_3,ax
          display_brick 110,10,brick_3_color_3
          inc bx
          mov temp3_3,bx
         ; inc score_count   
inc tempvar		  
  NEG ball_speed_y
 
not_collide_brick_3_3:  
  mov ax,0
  mov brick_3_color_3,ax
           display_brick 110,10,brick_3_color_3
.if(ax==0)

    jmp continue3_3
 .endif
 
.elseif
         display_brick 110,10,brick_3_color_3

        .endif


continue3_3:      

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;        display_brick 160,brick_y,1
 
          mov bx,temp4_3
   
   .if(ball_x >= 160 && ball_x <=200 && ball_y <=19 && ball_y >=9)
   
    .if(brick_4_color_3==8)
   call brick_sound
  mov ax,0
  mov brick_4_color_3,ax
        ;mov brick_3_color_3,0
		
          inc bx
          mov temp4_3,bx
      inc score_count   
inc tempvar	  
  NEG ball_speed_y
  jmp continue4_3
  .endif
   
   .if(brick_4_color_3==9)
   call brick_sound
  mov ax,8
  mov brick_4_color_3,ax
          display_brick 160,10,brick_4_color_3
          inc bx
          mov temp4_3,bx
     ; inc score_count   
;inc tempvar	  
  NEG ball_speed_y
  jmp continue4_3
  .endif
  
   
.if(bx>=2)
jmp not_collide_brick_4_3
.elseif(bx==0)
;call brick_sound
jmp collide_brick_4_3
.elseif(bx==1)
call brick_sound
jmp collide_break_4_3
.endif
collide_brick_4_3:
 NEG ball_speed_y
  call brick_sound

  mov ax,9
  mov brick_4_color_3,ax
          display_brick 160,10,brick_4_color_3
          inc bx
          mov temp4_3,bx
       ;inc score_count    
jmp continue4_3

collide_break_4_3:
 call brick_sound
  mov ax,0
  mov brick_4_color_3,ax
          display_brick 160,10,brick_4_color_3
          inc bx
          mov temp4_3,bx
      ;inc score_count   
inc tempvar	  
  NEG ball_speed_y
  
not_collide_brick_4_3:  
  mov ax,0
  mov brick_4_color_3,ax
           display_brick 160,10,brick_4_color_3
.if(ax==0)

    jmp continue4_3
 .endif
 
.elseif
         display_brick 160,10,brick_4_color_3

        .endif


continue4_3:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
     ;  display_brick 210,brick_y,2



          mov bx,temp5_3
   
   .if(ball_x >= 210 && ball_x <=250 && ball_y <=19 && ball_y >=9)
   
   .if(brick_5_color_3==8)
   call brick_sound
   mov ax,0
  mov brick_5_color_3,ax
          display_brick 210,10,brick_5_color_3

          inc bx
          mov temp5_3,bx
         inc score_count  
;inc tempvar		 
  NEG ball_speed_y
  jmp continue5_3
  .endif
  
   .if(brick_5_color_3==9)
   call brick_sound
   mov ax,8
  mov brick_5_color_3,ax
          display_brick 210,10,brick_5_color_3
          inc bx
          mov temp5_3,bx
         ;inc score_count  
;inc tempvar		 
  NEG ball_speed_y
  jmp continue5_3
  .endif
   
.if(bx>=2)
jmp not_collide_brick_5_3
.elseif(bx==0)
jmp collide_brick_5_3
.elseif(bx==1)
jmp collide_break_5_3
.endif

collide_brick_5_3:
 NEG ball_speed_y
call brick_sound
  mov ax,9
  mov brick_5_color_3,ax
          display_brick 210,10,brick_5_color_3
          inc bx
          mov temp5_3,bx
		  Neg ball_speed_y
         ;inc score_count    
jmp continue5_3
  
  collide_break_5_3:
  call brick_sound
   mov ax,0
  mov brick_5_color_3,ax
          display_brick 210,10,brick_5_color_3
          inc bx
          mov temp5_3,bx
        ; inc score_count  
inc tempvar		 
  NEG ball_speed_y
  jmp continue5_3
  
not_collide_brick_5_3:  
  mov ax,0
  mov brick_5_color_3,ax
           display_brick 210,10,brick_5_color_3
.if(ax==0)

    jmp continue5_3
 .endif
 
.elseif
         display_brick 210,10,brick_5_color_3

        .endif


continue5_3:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        ;display_brick 260,brick_y,3

          mov bx,temp6_3
   
   .if(ball_x >= 260 && ball_x <=300 && ball_y <=19 && ball_y >=9)
   
   .if(brick_6_color_3==8)
   call brick_sound
    mov ax,0
  mov brick_6_color_3,ax
          display_brick 260,10,brick_6_color_3
          inc bx
          mov temp6_3,bx
		 ; inc tempvar
          inc score_count    
  NEG ball_speed_y
  jmp continue6_3
  .endif
  
   .if(brick_6_color_3==9)
   call brick_sound
    mov ax,8
  mov brick_6_color_3,ax
          display_brick 260,10,brick_6_color_3
          inc bx
          mov temp6_3,bx
		 ; inc tempvar
         ; inc score_count    
  NEG ball_speed_y
  jmp continue6_3
  .endif
   
.if(bx>=2)
jmp not_collide_brick_6_3
.elseif(bx==0)
jmp collide_brick_6_3
.elseif(bx==1)
jmp collide_break_6_3
.endif
 
 collide_break_6_3:
 call brick_sound
    mov ax,9
  mov brick_6_color_3,ax
          display_brick 260,10,brick_6_color_3
          inc bx
          mov temp6_3,bx
		  inc tempvar
         ; inc score_count    
  NEG ball_speed_y
  jmp continue6_3
  
  collide_brick_6_3:
 NEG ball_speed_y
call brick_sound
  mov ax,8
  mov brick_6_color_3,ax
          display_brick 260,10,brick_6_color_3
          inc bx
          mov temp6_3,bx
      ;inc score_count    
 jmp continue6_3
 
not_collide_brick_6_3:  

  mov ax,0
  mov brick_6_color_3,ax
           display_brick 260,10,brick_6_color_3
.if(ax==0)

    jmp continue6_3
 .endif
 
.elseif
         display_brick 260,10,brick_6_color_3

        .endif


continue6_3:
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              ; FIRST ROW ENDS

        ;SECOND ROW OF BRICKS START
       
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
       


xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx

ret
blocks_display_3 endp







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

black_brick_display proc

 
    ; .if(ball_x >= 275 && ball_x <=305 && ball_y <=32 && ball_y >=22)
      display_brick ball_x,ball_y,0
; .endif


ret
black_brick_display endp

move_paddle proc


    xor ax,ax
    xor ax,ax

    mov ah,01h
    int 16h
    jnz check_paddle_movement
    jz exit
    check_paddle_movement:



    xor ax,ax
    mov ah,00
    int 16h
    jnz exit
    cmp ah,4bh
    je left_move
    cmp ah,4dh
    je right_move
    jmp exit
   


    left_move:

   

    xor ax,ax
    mov ax,paddle_x
    sub ax,10
    cmp ax,0
    jle exit
    mov paddle_x,ax
    xor ax,ax


    jmp exit

    right_move:

    xor ax,ax
    mov ax,paddle_x
    add ax,20
    cmp ax,290
    jge exit
    sub ax,20
    add ax,10
    mov paddle_x,ax
    xor ax,ax
   



    exit:

      xor ax,ax
       ;call display_paddle

ret

move_paddle endp



game_display proc
comment @
        mov ah, 0
        mov al, 13h
       int 10h
@
       

        xor ax,ax
        mov ax,5
        mov x1,ax
        xor ax,ax
        mov ax,2
        mov y1,ax
        xor ax,ax

        topLine:

        MOV AH, 0Ch
        MOV AL, 14
        MOV CX, x1 ; CX = 0
        MOV DX, y1 ; DX = 0
        INT 10H

        inc x1
        cmp cx,303
        jb topLine

        rightLine:

        MOV AH, 0Ch
        MOV AL, 14
        MOV CX, x1 ; CX = 300
        MOV DX, y1 ; DX = 0
        INT 10H

        inc y1
        cmp dx,190
        jb rightLine

        bottomLine:

        MOV AH, 0Ch
        MOV AL, 14
        MOV CX, x1 ; CX = 300
        MOV DX, y1 ; DX = 190
        INT 10H

        dec x1
        cmp cx,5
        ja bottomLine

        leftLine:

        MOV AH, 0Ch
        MOV AL, 14
        MOV CX, x1 ; CX = 0
        MOV DX, y1 ; DX = 190
        INT 10H

        dec y1
        cmp dx,2
        ja leftLine

        xor ax,ax
        mov ax,5
        mov brick_line1,ax
        xor ax,ax


  ;;;;;;;SCORE;;;;
 
        mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 29 ; x coordinate
        int 10h
        mov dx, offset score_display
        mov ah, 9h
        int 21h

        mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 35 ; x coordinate
        int 10h
.if(score_count==58)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_10_2
mov ah,9h
int 21h
.elseif(score_count==59)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_11
mov ah,9h
int 21h
.elseif(score_count==60)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_12
mov ah,9h
int 21h
.elseif(score_count==61)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_13
mov ah,9h
int 21h
.elseif(score_count==62)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_14
mov ah,9h
int 21h
.elseif(score_count==63)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_15
mov ah,9h
int 21h
.elseif(score_count==64)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_16
mov ah,9h
int 21h
.elseif(score_count==65)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_17
mov ah,9h
int 21h
.elseif(score_count==66)  ;18
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_18
mov ah,9h
int 21h
.elseif(score_count==67)  
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_19
mov ah,9h
int 21h

.elseif(score_count==68)   ;20  
mov dx,offset score_20_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_10_2
mov ah,9h
int 21h

.elseif(score_count==69)  
mov dx,offset score_20_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_11
mov ah,9h
int 21h

.elseif(score_count==70)  
mov dx,offset score_20_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_12
mov ah,9h
int 21h

.elseif(score_count==71)  
mov dx,offset score_20_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_13
mov ah,9h
int 21h

.elseif(score_count==72)    ;24
mov dx,offset score_20_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_14
mov ah,9h
int 21h

.elseif(score_count==73)    ;25
mov dx,offset score_20_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_15
mov ah,9h
int 21h

.elseif(score_count==74)    ;26
mov dx,offset score_20_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_16
mov ah,9h
int 21h

.elseif(score_count==75)    ;27
mov dx,offset score_20_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_17
mov ah,9h
int 21h

.elseif(score_count==76)    ;28
mov dx,offset score_20_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_18
mov ah,9h
int 21h

.elseif(score_count==77)    ;29
mov dx,offset score_20_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_19
mov ah,9h
int 21h

.elseif(score_count==78)   ;30  
mov dx,offset score_30_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_10_2
mov ah,9h
int 21h

.elseif(score_count==79)   ;31  
mov dx,offset score_30_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_11
mov ah,9h
int 21h

.elseif(score_count==80)   ;32  
mov dx,offset score_30_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_12
mov ah,9h
int 21h

.elseif(score_count==81)   ;33  
mov dx,offset score_30_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_13
mov ah,9h
int 21h

.elseif(score_count==81)   ;34  
mov dx,offset score_30_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_14
mov ah,9h
int 21h

.elseif(score_count==82)   ;35 
mov dx,offset score_30_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_15
mov ah,9h
int 21h

.elseif(score_count==83)   ;36 
mov dx,offset score_30_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_16
mov ah,9h
int 21h
.elseif
        mov dx, offset score_count
        mov ah, 9h
        int 21h  
.endif
   
        xor ax,ax
        mov ax,5
        mov brick_line1,ax
        xor ax,ax

     ; .if(score_count==66)
   ;mov ax,18
   ;mov score,ax
   ;.if(score_count==72)
   ;call end_game
   ;.endif


        ;;;;;LIVES;;;;;;;;;
        xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx


        mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 2 ; x coordinate
        int 10h
        mov dx, offset lives_display
        mov ah, 9h
        int 21h

   
        mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 9 ; x coordinate
        int 10h
        mov dx, offset lives
        mov ah, 9h
        int 21h

         
       
       
    ret

game_display endp



game_display_2 proc
comment @
        mov ah, 0
        mov al, 13h
       int 10h
@
       

        xor ax,ax
        mov ax,5
        mov x1,ax
        xor ax,ax
        mov ax,2
        mov y1,ax
        xor ax,ax

        topLine1:

        MOV AH, 0Ch
        MOV AL, 14
        MOV CX, x1 ; CX = 0
        MOV DX, y1 ; DX = 0
        INT 10H

        inc x1
        cmp cx,303
        jb topLine1

        rightLine1:

        MOV AH, 0Ch
        MOV AL, 14
        MOV CX, x1 ; CX = 300
        MOV DX, y1 ; DX = 0
        INT 10H

        inc y1
        cmp dx,190
        jb rightLine1

        bottomLine1:

        MOV AH, 0Ch
        MOV AL, 14
        MOV CX, x1 ; CX = 300
        MOV DX, y1 ; DX = 190
        INT 10H

        dec x1
        cmp cx,5
        ja bottomLine1

        leftLine1:

        MOV AH, 0Ch
        MOV AL, 14
        MOV CX, x1 ; CX = 0
        MOV DX, y1 ; DX = 190
        INT 10H

        dec y1
        cmp dx,2
        ja leftLine1

        xor ax,ax
        mov ax,5
        mov brick_line1,ax
        xor ax,ax


  ;;;;;;;SCORE;;;;
 comment @
        mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 29 ; x coordinate
        int 10h
        mov dx, offset score_display
        mov ah, 9h
        int 21h

        mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 35 ; x coordinate
        int 10h
.if(score_count==58)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_10_2
mov ah,9h
int 21h
.elseif(score_count==59)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_11
mov ah,9h
int 21h
.elseif(score_count==60)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_12
mov ah,9h
int 21h
.elseif(score_count==61)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_13
mov ah,9h
int 21h
.elseif(score_count==62)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_14
mov ah,9h
int 21h
.elseif(score_count==63)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_15
mov ah,9h
int 21h
.elseif(score_count==64)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_16
mov ah,9h
int 21h
.elseif(score_count==65)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_17
mov ah,9h
int 21h
.elseif(score_count==66)
mov dx,offset score_10_1
mov ah, 9h
        int 21h

mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 36 ; x coordinate
        int 10h
mov dx,offset score_18
mov ah,9h
int 21h
.elseif
        mov dx, offset score_count
        mov ah, 9h
        int 21h  
.endif
   
        xor ax,ax
        mov ax,5
        mov brick_line1,ax
        xor ax,ax

     .if(score_count==78)
   call winning
   .endif


        ;;;;;LIVES;;;;;;;;;
        xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx


        mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 2 ; x coordinate
        int 10h
        mov dx, offset lives_display
        mov ah, 9h
        int 21h

   
        mov ah, 02h
        mov dh, 23  ; y coordinate
        mov dl, 9 ; x coordinate
        int 10h
        mov dx, offset lives
        mov ah, 9h
        int 21h
@
         
       
       
    ret

game_display_2 endp




display_ball proc



    MOV CX, ball_x ;
    MOV DX, ball_y ;

    display_horizontal:

    MOV AH, 0Ch
    MOV AL, 10
    INT 10H
    inc cx
    mov ax,cx
    sub ax, ball_x
    cmp ax, ball_size
    jng display_horizontal
    mov cx,ball_x
    inc dx
    mov ax,dx
    sub ax,ball_y
    cmp ax,ball_size
    jng display_horizontal



    RET

display_ball endp

display_ball_black proc



    MOV CX, ball_x ;
    MOV DX, ball_y ;

    display_horizontall:

    MOV AH, 0Ch
    MOV AL, 0
    INT 10H
    inc cx
    mov ax,cx
    sub ax, ball_x
    cmp ax, ball_size
    jng display_horizontall
    mov cx,ball_x
    inc dx
    mov ax,dx
    sub ax,ball_y
    cmp ax,ball_size
    jng display_horizontall



    RET

display_ball_black endp

display_paddle_2 proc

 
 
   xor ax,ax
   mov ax,paddle_x
   mov paddle_x_new,ax
   xor ax,ax
   xor bx,bx
   xor cx,cx
   xor dx,dx
   mov check_inc,ax
   xor ax,ax

    lengthh22:

    mov ah,0ch
    MOV AL, 13
    INT 10H
    mov cx,paddle_x_new
    mov dx,paddle_y
    inc paddle_x_new
    inc check_inc
    mov bx,check_inc
    cmp bx,30
    jb lengthh22
   
    xor bx,bx
   



    ret

    display_paddle_2 endp



display_paddle proc

 
 
   xor ax,ax
   mov ax,paddle_x
   mov paddle_x_new,ax
   xor ax,ax
   xor bx,bx
   xor cx,cx
   xor dx,dx
   mov check_inc,ax
   xor ax,ax

    lengthh:

    mov ah,0ch
    MOV AL, 13
    INT 10H
    mov cx,paddle_x_new
    mov dx,paddle_y
    inc paddle_x_new
    inc check_inc
    mov bx,check_inc
    cmp bx,30
    jb lengthh
   
    xor bx,bx
   



    ret

    display_paddle endp
	
display_paddle_black proc

 
 
   xor ax,ax
   mov ax,paddle_x
   mov paddle_x_new,ax
   xor ax,ax
   xor bx,bx
   xor cx,cx
   xor dx,dx
   mov check_inc,ax
   xor ax,ax

    lengthhh:

    mov ah,0ch
    MOV AL, 0
    INT 10H
    mov cx,paddle_x_new
    mov dx,paddle_y
    inc paddle_x_new
    inc check_inc
    mov bx,check_inc
    cmp bx,30
    jb lengthhh
   
    xor bx,bx
   



    ret

    display_paddle_black endp

display_paddle_black_2 proc

 
 
   xor ax,ax
   mov ax,paddle_x
   mov paddle_x_new,ax
   xor ax,ax
   xor bx,bx
   xor cx,cx
   xor dx,dx
   mov check_inc,ax
   xor ax,ax

    lengthhh2:

    mov ah,0ch
    MOV AL, 0
    INT 10H
    mov cx,paddle_x_new
    mov dx,paddle_y
    inc paddle_x_new
    inc check_inc
    mov bx,check_inc
    cmp bx,30
    jb lengthhh2
   
    xor bx,bx
   



    ret

    display_paddle_black_2 endp


brick_sound proc
        push ax
        push bx
        push cx
        push dx
        mov     al, 182         ; Prepare the speaker for the
        out     43h, al         ;  note.
        mov     ax, 400        ; Frequency number (in decimal)
                                ;  for middle C.
        out     42h, al         ; Output low byte.
        mov     al, ah          ; Output high byte.
        out     42h, al
        in      al, 61h         ; Turn on note (get value from
                                ;  port 61h).
        or      al, 00000011b   ; Set bits 1 and 0.
        out     61h, al         ; Send new value.
        mov     bx, 2          ; Pause for duration of note.
.pause1:
        mov     cx, 65535
.pause2:
        dec     cx
        jne     .pause2
        dec     bx
        jne     .pause1
        in      al, 61h         ; Turn off note (get value from
                                ;  port 61h).
        and     al, 11111100b   ; Reset bits 1 and 0.
        out     61h, al         ; Send new value.

        pop dx
        pop cx
        pop bx
        pop ax

ret
brick_sound endp


creditSection proc

 
 
    mov ah, 0
    mov al, 13h
    int 10h

    mov ah, 02h
    mov dh, 0  ; y coordinate
    mov dl, 20 ; x coordinate
    int 10h
    mov dx, offset credits1
    mov ah, 9h
    int 21h

    mov ah, 02h
    mov dh, 10  ; y coordinate
    mov dl, 20 ; x coordinate
    int 10h
    mov dx, offset CREDITS
    mov ah, 9h
    int 21h

    again2:
    mov ah,1
    int 16h
    mov ah,0
    int 16h
    cmp al,27
    je escape2
    jne again2


    escape2:

    call page2


    ret

creditSection endp


aboutSection proc


    ; if user wants to naviagte to about section



    mov ah, 0
    mov al, 13h
    int 10h

    mov ah, 02h
    mov dh, 0  ; y coordinate
    mov dl, 20 ; x coordinate
    int 10h
    mov dx, offset About
    mov ah, 9h
    int 21h

    mov ah, 02h
    mov dh, 10  ; y coordinate
    mov dl, 20 ; x coordinate
    int 10h
    mov dx, offset About1
    mov ah, 9h
    int 21h


    again1:
    mov ah,1
    int 16h
    mov ah,0
    int 16h
    cmp al,27
    je escape1
    jne again1


    escape1:

    call page2





    ret

aboutSection endp



page2 proc


      ;MENU  


    mov ah, 0
    mov al, 13h
    int 10h


 mov ah, 02h
    mov dh, 1  ; y coordinate
    mov dl, 152; x coordinate
    int 10h
    mov dx, offset name1
    mov ah, 9h
    int 21h 

    mov ah, 02h
    mov dh, 0  ; y coordinate
    mov dl, 0 ; x coordinate
    int 10h
    mov dx, offset WLCM
    mov ah, 9h
    int 21h  

    mov ah, 02h
    mov dh, 10  ; y coordinate
    mov dl, 20 ; x coordinate
    int 10h
    mov dx, offset OPTIONS
    mov ah, 9h
    int 21h  

    ;INPUT

    again3:
    XOR AL,AL
    MOV AH,1
    INT 21H
    MOV DL,AL
    cmp AL,50 ; IF USER CHOSES TO GO TO CREDIT SECTION
    je cr
    cmp Al,51 ;IF USER CHOSES ABOUT SECTION
    je as
    cmp Al,49 ; IF USER CHOSES NEW GAME SECTION
    je newgame
    cmp al,53
    je instr1
    cmp al,54
    jmp exit_6
    jmp again3

    newgame:


    call run_game
	;increase the speed for level 2
comment @
	.if(score_count>=66)
    
	xor ax,ax
   mov ax,4
   mov ball_speed_x,ax
   xor ax,ax
   mov ax,5
   mov ball_speed_y,ax
   xor ax,ax
   .endif
   
	mov score_count,66
	display_brick 10,10,1
	display_brick 60,10,2
	display_brick 110,10,3
	display_brick 160,10,4
	display_brick 210,10,5
	display_brick 260,10,6
	call run_game_2
	@
    jmp exit_6

    cr:

    call creditSection
    jmp exit_6

    as:

    call aboutSection
    jmp exit_6

    instr1:

    call instructions1


    exit_6:
    ret

page2 endp

first_page proc
   
    again5:
    mov ah,1
    int 16h
    jz again5
    mov ah,0
    int 16h
    cmp al,13
    je go
    jne again5

    go:

    MOV CX, xAxis
    MOV DX, yAxis
    MOV AL, 15 ;white color
    MOV AH, 0CH
    INT 10H  
    INC xAxis
    cmp xAxis,bx

    jb go  

    MOV BX,100

    go1:

    MOV CX,xAXIS
    MOV DX,yAxis
    MOV AL,15
    MOV AH,0CH
    INT 10H
    INC yAxis
    cmp yAxis,BX
    jb go1

    MOV BX,100

    go2:

    MOV CX,xAXIS
    MOV DX,yAxis
    MOV AL,15
    MOV AH,0CH
    INT 10H
    DEC xAxis
    cmp xAxis,BX
    ja go2

    MOV BX,50

    go3:

    MOV CX,xAXIS
    MOV DX,yAxis
    MOV AL,15
    MOV AH,0CH
    INT 10H
    DEC yAxis
    cmp yAxis,BX
    ja go3  



    mov ah, 02h
    mov dh, 8  ; y coordinate
    mov dl, 16 ; x coordinate
    int 10h
    mov dx, offset string
    mov ah, 9h
    int 21h  

    mov ah, 02h
    mov dh, 11  ; y coordinate
    mov dl, 14 ; x coordinate  
    int 10h
    mov dx, offset str
    mov ah, 9h
    int 21h

    ;ENTER YOUR NAME

    mov ah, 02h
    mov dh, 17  ; y coordinate
    mov dl, 11 ; x coordinate
    int 10h
    mov dx, offset string1
    mov ah, 9h
    int 21h  
       
 
 


     
    ; set cursor position for input

    MOV AH,02H
    MOV BX,0
    MOV DH, 19 ;y axis
    MOV DL, 15  ;x axis
    INT 10H  

    ; taking input from user



       L1:

    MOV AH,1
    INT 21H
    CMP AL,13
    JE disp


    MOV [SI],AL
    MOV AL,'$'
    MOV[SI+1],AL
    INC SI
    JMP L1

    disp:

xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx

    mov ah, 02h
    mov dh, 19  ; y coordinate
    mov dl, 15 ; x coordinate
    int 10h
    mov dx, offset name1
    mov ah, 9h
    int 21h  
    
    again4:
    XOR AL,AL
    xor dx,dx
    MOV AH,1
    INT 21H
    MOV DL,AL

    cmp AL,13
    je l11
    jne again4

    l11:

    call page2

    ret

first_page endp

instructions1 proc

 mov ah, 0
    mov al, 13h
    int 10h

    mov ah, 02h
    mov dh, 0  ; y coordinate
    mov dl, 20 ; x coordinate
    int 10h
    mov dx, offset instruc
    mov ah, 9h
    int 21h

    mov ah, 02h
    mov dh, 10  ; y coordinate
    mov dl, 15 ; x coordinate
    int 10h
    mov dx, offset instructions
    mov ah, 9h
    int 21h


    again_2:
    mov ah,1
    int 16h
    mov ah,0
    int 16h
    cmp al,27
    je escape5
    jne again_2


    escape5:

    call page2





    ret

    instructions1 endp

   winning proc
   
    mov ah, 0
    mov al, 13h
    int 10h



    mov ah, 02h
    mov dh, 8  ; y coordinate
    mov dl, 15 ; x coordinate
    int 10h
    mov dx, offset WINNI
    mov ah, 9h
    int 21h


    again_2_7:
    mov ah,1
    int 16h
    mov ah,0
    int 16h
    cmp al,27
    je escape5_6
    jne again_2_7


    escape5_6:

    call end_game
   
   ret
   winning endp

end