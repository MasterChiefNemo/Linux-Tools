#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void log_remove()
{
	printf("Delete Unnecessary .log and .bak Files\n");
	printf("======================================\n");

	// Find and Delete all log + bak files.
	system("../scripts/CleanUp/logClean.sh");
	printf("\nDone removing log and bak files!\n");
	system("sleep 5");

	// Does an apt remove and auto remove
	system("../scripts/CleanUp/autoClean.sh"); // Tidy up
	system("sleep 5");
	printf("Done Tidying up!\n");
}

void packages()
{
	printf("Installing Packages\n");
	printf("===================\n");
	system("../scripts/Installs/packages.sh");
}

/* The intention of this application, is to remove all
   unnecessary log files and free up disk space. */	
int main()
{
	log_remove(); // Clean up.
	packages();
	return 0;
}
