#include <string.h>
#include <stdio.h>

int main(int argc, char *argv[])
{
	if (argc==2)
	{
	printf("Checking key %s...\n",argv[1]);
		if (strcmp(argv[1],"1234-5678-ABCD")==0)
		{
		printf("%s is ok, access granted\n",argv[1]);
		return 0;
		}
		else
		{
		printf("Wrong key, access denied\n");
		return 0;
		}
	}
	else
	{
		printf("Usage : <key>\n");
		return 1;
	}
}
