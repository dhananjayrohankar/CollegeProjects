#include<iostream.h>
#include<stdio.h>
#include<conio.h>
#include<string.h>
#include<dos.h>
#include<graphics.h>
#include<process.h>
void intro();
void choice();
void text();
void call();
void present_s_c();
void present_p_pc();
void past_s();
void past_c();
void past_p_pc();
void future();
void end();
int gd=DETECT,gm=DETECT,u;
int j=0,s1,s2,k,i,f,p,temp;
char t[100][100] = {'\0'},tp,al;
void main()
{
	clrscr();
	intro();
	choice();
}
void intro()
{
	clrscr();
	initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
	setcolor(8);
	settextstyle(1,0,2);
	settextjustify(1,1);
	setcolor(5);
	u=installuserfont("LITT.CHR");
	settextstyle(u,0,7);
	outtextxy(320,55,"::: PROJECT ON TENSE CHECKER :::");
	delay(250);
	setcolor(20);
	u=installuserfont("LITT.CHR");
	settextstyle(u,0,6);
	outtextxy(320,90,"PRESENTED BY::");
	settextstyle(1,0,2);
	setcolor(3);
	delay(250);
	u=installuserfont("LITT.CHR");
	settextstyle(u,0,7);
	delay(250);
	outtextxy(323,125,"DHANANJAY D. ROHANKAR");
	delay(250);
	outtextxy(320,150,"ANKUSH S. BUTOLE");
	delay(250);
	outtextxy(323,175,"MOHSIN H. RAILIWALE");
	delay(250);
	outtextxy(320,200,"ANANTKUMAR V. SALAME");
	delay(250);
	u=installuserfont("LITT.CHR");
	settextstyle(u,0,6);
	setcolor(29);
	outtextxy(320,225,"(C.S.E 3RD YEAR)");
	u=installuserfont("LITT.CHR");
	settextstyle(u,0,6);
	setcolor(20);
	outtextxy(320,310,"GUIDED BY");
	delay(250);
	settextstyle(u,0,7);
	setcolor(3);
	outtextxy(320,337,"Prof.SUCHITA DESHMUKH");
	delay(250);
	u=installuserfont("LITT.CHR");
	settextstyle(u,0,6);
	setcolor(5);
	outtextxy(320,365,"DEPARTMENT OF COMP. SCIENCE & ENGG.");
	delay(250);
	outtextxy(320,385,"GOVT. COLLEGE OF ENGG.");
	delay(250);
	outtextxy(320,415,"CHANDRAPUR");
	delay(250);
	getch();
	closegraph();
	clrscr();
}
void choice()
{
	int n;
	clrscr();
	initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
	rectangle(510,270,135,152);
	rectangle(510,280,135,162);
	gotoxy(30,12);
	cout<<"Enter Your Choice";
	gotoxy(30,14);
	cout<<"press [_1_]   Check the sentence";
	gotoxy(30,16);
	cout<<"press [_2_]   Exit";
	n=getch();
	closegraph();
	switch(n)
	{
		case '1':
		{
			text();
			closegraph();
			break;
		}
		case '2':
		{
			end();
			exit(0);
			break;
		}
		default:
		{
		choice();
		}
	}
	closegraph();
}
void text()
{

	clrscr();
	for(i=0;i<100;i++)
	{
		for(j=0;j<100;j++)
		{
			t[i][j]=0;
		}
	}
	gotoxy(15,2);
	cout<<"NOTE:- 1) Your sentence must contain AUXILLARY VERB. ";
	gotoxy(22,3);
	cout<<"2) BackSpace not allowed.";
	gotoxy(30,5);
	cout<<"Enter the Sentence::";
	gotoxy(30,8);
	for(i=0;i<20;i++)
	{
		for(j=0;j<20;j++)
		{
			tp=getche();
			if(tp==' ')
			{
				goto s1;
			}
			if(tp=='\r')
			{
				goto s2;
			}
			t[i][j]=tp;
		}
		s2:
		cout<<"\n";
		break;
		s1:
	}
	closegraph();
	call();
}
void call()
{
	int i;
	clrscr();
	gotoxy(20,3);
	for(i=0;i<15;i++)
	{
		for(j=0;j<10;j++)
		{
			cout<<t[i][j];
		}
	}
	closegraph();
	char pre_s_c[5][5]={"is","are","am","do","does"};
	char pre_p_pc[2][10]={"have","has"};
	char pst_s[1][15]={"did"};
	char pst_c[2][15]={"was","were"};
	char pst_p_pc[1][15]={"had"};
	char ftr[2][6]={"will","shall"};

	initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
	rectangle(580,290,155,162);
	rectangle(560,270,135,152);
	rectangle(540,250,115,132);
	for(i=0;i<15;i++)
	{
		for(k=0;k<5;k++)
		{
			if((strcmp(t[i],pre_s_c[k]))==0)
			{
				present_s_c();
			}
			else
			{
				if((strcmp(t[i],pre_p_pc[k]))==0)
				{
					present_p_pc();
				}
				else
				{
					if((strcmp(t[i],pst_s[k]))==0)
					{
						past_s();
					}
					else
					{
						if((strcmp(t[i],pst_c[k]))==0)
						{
							past_c();
						}
						else
						{
							if((strcmp(t[i],pst_p_pc[k]))==0)
							{
								past_p_pc();
							}
							else
							{
								if((strcmp(t[i],ftr[k]))==0)
								{
									future();
								}
							}
						}
					}
				}
			}
		}
	}
	closegraph();
}
void present_s_c()
{

	int c,i;
	char pr[5][10]={"is","are","am","do","does"};
	int  f=1;
	for(i=0;i<10;i++)
	{
		for(k=0;k<5;k++)
		{
			c=strcmpi(t[i],pr[k]);
			if(c==0)
			{
				f=0;
				temp=i;
			}
		}
	}
	if(f==0)
	{
		char d[5]={'\0'},d1[100]={"ing"};
		int c2=1;
		temp=temp+1;
		for(int kl=0;kl<100;kl++)
		{
			if(t[temp][kl]=='\0')
			break;
		}
		if(t[temp][kl]=='\0')
		{
			d[0]=t[temp][kl-3];
			d[1]=t[temp][kl-2];
			d[2]=t[temp][kl-1];
		}
		c2=strcmp(d,d1);
		if(c2==0)
		{
			u=installuserfont("LITT.CHR");
			settextstyle(u,0,6);
			setcolor(2);
			outtextxy(180,190,"It is in PRESENT CONTINOUS TENSE");
		}
		else
		{
			u=installuserfont("LITT.CHR");
			settextstyle(u,0,6);
			setcolor(2);
			outtextxy(180,190,"It is in SIMPLE PRESENT TENSE");
		}
	}
	al=getch();
	if(al=='\r')
	choice();
}
void present_p_pc()
{
	int c,i;
	char pp[2][10]={"have","has"};
	int  f=1;
	for(i=0;i<10;i++)
	{
		for(k=0;k<5;k++)
		{
			c=strcmpi(t[i],pp[k]);
			if(c==0)
			{
				f=0;
				temp=i;
			}
		}
	}
	if(f==0)
	{
		char d[5]={'\0'},d1[100]={"been"};
		int c2=1;
		temp=temp+1;
		for(int kl=0;kl<100;kl++)
		{
			if(t[temp][kl]=='\0')
			break;
		}
		if(t[temp][kl]=='\0')
		{
			d[0]=t[temp][kl-4];
			d[1]=t[temp][kl-3];
			d[2]=t[temp][kl-2];
			d[3]=t[temp][kl-1];
		}
		c2=strcmp(d,d1);
		if(c2==0)
		{
			u=installuserfont("LITT.CHR");
			settextstyle(u,0,6);
			setcolor(2);
			outtextxy(180,190,"It is in PRESENT PERFECT CONTINOUS TENSE");
		}
		else
		{
			u=installuserfont("LITT.CHR");
			settextstyle(u,0,6);
			setcolor(2);
			outtextxy(180,190,"It is in PRESENT PERFECT TENSE");

		}
	}
	al=getch();
	if(al=='\r')
	choice();
}
void past_s()
{
	char d[3]={'\0'},d1[3]={"ed"};
	char pa[10][5]={"did"};
	int c1,c2=1;
	f=1;
	for(int kl=0;kl<10;kl++)
	{
		if(t[1][kl]=='\0')
		break;
	}
	if(t[1][kl]=='\0')
	{
		d[0]=t[1][kl-2];
		d[1]=t[1][kl-1];
	}
	c2=strcmpi(d,d1);
	if(c2==0)
	{
		u=installuserfont("LITT.CHR");
		settextstyle(u,0,6);
		setcolor(2);
		outtextxy(180,190,"It is in SIMPLE PAST TENSE");
	}
	else
	{
		for(k=0;k<6;k++)
		{
			c1=strcmpi(t[1],pa[k]);
			if(c1==0)
			f=0;
		}
		if(f==0)
		{
			u=installuserfont("LITT.CHR");
			settextstyle(u,0,6);
			setcolor(2);
			outtextxy(180,190,"It is in SIMPLE PAST TENSE");
		}
	}
	al=getch();
	if(al=='\r')
	choice();
}

void past_c()
{
	int c,i;
	char pstc[5][10]={"was","were"};
	int  f=1;
	for(i=0;i<10;i++)
	{
		for(k=0;k<5;k++)
		{
			c=strcmpi(t[i],pstc[k]);
			if(c==0)
			{
				f=0;
				temp=i;
			}
		}
	}
	if(f==0)
	{
		char d[5]={'\0'},d1[100]={"ing"};
		int c2=1;
		temp=temp+1;
		for(int kl=0;kl<100;kl++)
		{
			if(t[temp][kl]=='\0')
			break;
		}
		if(t[temp][kl]=='\0')
		{
			d[0]=t[temp][kl-3];
			d[1]=t[temp][kl-2];
			d[2]=t[temp][kl-1];
		}
		c2=strcmp(d,d1);
		if(c2==0)
		{
			u=installuserfont("LITT.CHR");
			settextstyle(u,0,6);
			setcolor(2);
			outtextxy(180,190,"It is in PAST CONTINOUS TENSE");
		}
		else
		{
			u=installuserfont("LITT.CHR");
			settextstyle(u,0,6);
			setcolor(2);
			outtextxy(180,190,"It is in PAST CONTINOUS TENSE");
		}
	}
	al=getch();
	if(al=='\r')
	choice();
}
void past_p_pc()
{
	int c,i;
	char pstp[1][10]={"had"};
	int  f=1;
	for(i=0;i<10;i++)
	{
		for(k=0;k<5;k++)
		{
			c=strcmpi(t[i],pstp[k]);
			if(c==0)
			{
				f=0;
				temp=i;

			}
		}
	}
	if(f==0)
	{
		char d[5]={'\0'},d1[100]={"been"};
		int c2=1;
		temp=temp+1;
		for(int kl=0;kl<100;kl++)
		{
			if(t[temp][kl]=='\0')
			break;
		}
		if(t[temp][kl]=='\0')
		{
			d[0]=t[temp][kl-4];
			d[1]=t[temp][kl-3];
			d[2]=t[temp][kl-2];
			d[3]=t[temp][kl-1];
		}
		c2=strcmp(d,d1);
		if(c2==0)
		{
			u=installuserfont("LITT.CHR");
			settextstyle(u,0,6);
			setcolor(2);
			outtextxy(180,190,"It is in PAST PERFECT CONTINOUS TENSE");
		}
		else
		{
			u=installuserfont("LITT.CHR");
			settextstyle(u,0,6);
			setcolor(2);
			outtextxy(180,190,"It is in PAST PERFECT TENSE");

		}
	}
	al=getch();
	if(al=='\r')
	choice();
}
void future()
{
	int c,i;
	char ftr[2][6]={"will","shall"};
	int  f=1;
	for(i=0;i<2;i++)
	{
		for(k=0;k<5;k++)
		{
			c=strcmpi(t[i],ftr[k]);
			if(c==0)
			{
				f=0;
				temp=i;
			}
		}
	}
	if(f==0)
	{
		char d[5]={'\0'},d1[10]={"have"};
		int c2=1;
		temp=temp+1;
		for(int kl=0;kl<10;kl++)
		{
			if(t[temp][kl]=='\0')
			break;
		}
		if(t[temp][kl]=='\0')
		{
			d[0]=t[temp][kl-4];
			d[1]=t[temp][kl-3];
			d[2]=t[temp][kl-2];
			d[3]=t[temp][kl-1];
		}
		c2=strcmp(d,d1);
		if(c2==0)
		{
			char d2[5]={'\0'},d3[10]={"been"};
			int c3=1;
			temp=temp+1;
			for(int kl=0;kl<10;kl++)
			{
				if(t[temp][kl]=='\0')
				break;
			}
			if(t[temp][kl]=='\0')
			{
				d2[0]=t[temp][kl-4];
				d2[1]=t[temp][kl-3];
				d2[2]=t[temp][kl-2];
				d2[3]=t[temp][kl-1];
			}
			c3=strcmp(d2,d3);
			if(c3==0)
			{
				u=installuserfont("LITT.CHR");
				settextstyle(u,0,6);
				setcolor(2);
				outtextxy(180,190,"It is in FUTURE PERFECT CONTINOUS TENSE");
			}
			else
			{
				u=installuserfont("LITT.CHR");
				settextstyle(u,0,6);
				setcolor(2);
				outtextxy(180,190,"It is in FUTURE PERFECT TENSE");
			}
		}
		else
		{
			char d[5]={'\0'},d1[2]={"be"};
			int c2=1;
			temp=temp+1;
			for(int kl=0;kl<2;kl++)
			{
				if(t[temp][kl]=='\0')
				break;
			}
			if(t[temp][kl]=='\0')
			{
				d[0]=t[temp][kl-2];
				d[1]=t[temp][kl-1];
			}
			c2=strcmp(d,d1);
			if(c2==0)
			{
				u=installuserfont("LITT.CHR");
				settextstyle(u,0,6);
				setcolor(2);
				outtextxy(180,190,"It is in FUTURE CONTINOUS TENSE");
			}
			else
			{
				u=installuserfont("LITT.CHR");
				settextstyle(u,0,6);
				setcolor(2);
				outtextxy(180,190,"It is in SIMPLE FUTURE TENSE");
			}
		}
	}
	al=getch();
	if(al=='\r')
	choice();
}

void end()
{
	int stangle,col=1;
	clrscr();
	initgraph(&gd, &gm, "C:\\TurboC3\\BGI");
	delay(500);
	setcolor(9);
	u=installuserfont("LITT.CHR");
	settextstyle(u,0,12);
	outtextxy(215,200,"Thank You.....!!!");
	for (stangle=0;!kbhit();stangle++)
	{
		setcolor(col);
		ellipse(320,210,stangle,stangle+20,250,100);
		ellipse(320,210,stangle+180,stangle+200,250,100);
		delay(9);
		setcolor(8);
		ellipse(320,210,stangle-1+180,stangle+199,250,100);
	}
	closegraph();
	getch();
}
