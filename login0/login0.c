#include <string.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
	volatile int group;
	char buffer[64];
	group=0x75736572; //user
	if (argc==2)
	{
		strcpy(buffer,argv[1]);
		if (group==0x61646d696e)
		{
			printf("Hello, admin %s\n",argv[1]);
		}
		else
		{
			printf("Hello, user %s\n",argv[1]);
		}
	}
	else
	{
		printf("Usage : <username>\n");
	}
}
