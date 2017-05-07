#include <string.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
	volatile int group;
	char buffer[64];
	group=0; //user
	if (argc==2)
	{
		strcpy(buffer,argv[1]);
		if (group==0x726f6f74)
		{
			printf("Hello, root %s\n",argv[1]);
		}
		else
		{
			printf("Hello, user (%08x) %s\n",group,argv[1]);
		}
	}
	else
	{
		printf("Usage : <username>\n");
	}
}








//\x0a\x0d\x0a\x0d\x0a\x0d\x0a\x0d\x0a\x0d\x0a\x0d\x0a\x0d\x0a\x0d\x0a\x0d\x0a\x0d\x0a\x0d\x0a\x0daaaatoor
