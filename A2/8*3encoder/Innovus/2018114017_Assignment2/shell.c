#include <sys/types.h>
#include <sys/stat.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <limits.h>
#include <string.h>
#include <dirent.h>
#include <time.h>
#include <grp.h>
#include <pwd.h>
#include <sys/wait.h>
#include <signal.h>
#include <fcntl.h>
#include <errno.h>
int max=21;
typedef struct{
	char name[25][100];
	int size;
}his;
char delimit[]=" \t\r\n\v\f";
char p_dir[1000]="~";
char bg_processname[1000][100];
int bg_processid[1000];
int bg=0;
char home[1000];
int insq(char queue[max][500], int *rear, char data[80])
{
      if(*rear == max -1)
            return(-1);
      else
      {
            *rear = *rear + 1;
            strcpy(queue[*rear], data);
            return(1);
      }
}
char issspace (unsigned char c) 
{
  if ( c == ' '
    || c == '\f'
    || c == '\n'
    || c == '\r'
    || c == '\t'
    || c == '\v' ) 
      return 1;

  return 0;
}
char* itoa(long long int val, int base){
	
	static char buf[32] = {0};
	
	int i = 30;
	
	for(; val && i ; --i, val /= base)
	
		buf[i] = "0123456789abcdef"[val % base];
	
	return &buf[i+1];
	
}
int  getSubString(char *source, char *target,int from, int to)
{
	int length=0;
	int i=0,j=0;
	
	//get length
	while(source[i++]!='\0')
		length++;
	
	if(from<0 || from>length){
		printf("Invalid \'from\' index\n");
		return 1;
	}
	if(to>length){
		printf("Invalid \'to\' index\n");
		return 1;
	}	
	
	for(i=from,j=0;i<=to;i++,j++){
		target[j]=source[i];
	}
	
	//assign NULL at the end of string
	target[j]='\0'; 
	
	return 0;	
}
char *isunderhome(char *path)
{
	if(strncmp(path, home, strlen(home))==0)
	{
		char *target = (char *)malloc(1000 * sizeof(char));	
		getSubString(path,target,strlen(home), strlen(path)-1);
		char temp[1000]="~";
		strcat(temp,target);
		strcpy(p_dir,temp);
	}
	else
	{
		strcpy(p_dir,path);
	}
}
char *trimwhitespace(char *str)
{
  char *end;

  // Trim leading space
  while(issspace((unsigned char)*str)) str++;

  if(*str == 0)  // All spaces?
    return str;

  // Trim trailing space
  end = str + strlen(str) - 1;
  while(end > str && issspace((unsigned char)*end)) end--;

  // Write new null terminator character
  end[1] = '\0';

  return str;
}
void invalid(char *str)
{
	printf("Invalid instance of %s\n", str);
}
void pwd()
{
	char *path = (char *)malloc(1000 * sizeof(char));
	char *check=getcwd(path,1000);
	// printf("%s\n", path);
	isunderhome(path);
}
void pwd2()
{
	char *path = (char *)malloc(1000 * sizeof(char));
	char *check=getcwd(path,1000);
	if(check==NULL)
	{
		perror("pwd didn't happen");
		return;
	}
	printf("%s\n", path);
}
int cd(char *path)
{
	char *before=(char *)malloc(1000 * sizeof(char));
	strcpy(before, p_dir);
	if(path[0]=='~')
	{
		char *temp=(char *)malloc(1000 * sizeof(char));
		char *temp2=(char *)malloc(1000 * sizeof(char));
		getSubString(path,temp,1, strlen(path)-1);
		strcpy(temp2,home);
		strcat(temp2,temp);
		strcpy(path,temp2);
	}
	int state = chdir(path);
	if(state == -1)
	{
		cd(before);
		
		return 0;
	}
	pwd();
	return 1;
	// printf("%s\n", p_dir);
}
void echo(int argc,char **argv)
{
	if(argc!=1)
		for(int i=1;i<argc;i++)
			printf("%s ",argv[i]);
	printf("\n");
}
void ls(int a,int l,char *path)
{
	char *before=(char *)malloc(1000 * sizeof(char));
	strcpy(before, p_dir);
	int fol_exists=cd(path);
	cd(before);
	if(!fol_exists)
	{
		perror("Illegal usage of ls");
		return;
	}
	if(path[0]=='~')
	{
		char *temp=(char *)malloc(1000 * sizeof(char));
		char *temp2=(char *)malloc(1000 * sizeof(char));
		getSubString(path,temp,1, strlen(path)-1);
		strcpy(temp2,home);
		strcat(temp2,temp);
		strcpy(path,temp2);
	}
	// char *temp=(char *)malloc(1000 * sizeof(char));
	// int fol_exists=cd(path);
	// cd(before);
	DIR *folder;
	folder=opendir(path);
	struct dirent *myfile;
    struct stat mystat;
    if(folder==NULL)
    	printf("%s\n",path);
    while((myfile = readdir(folder)) != NULL)
    {
    	if((strcmp(myfile->d_name, "..") == 0 || strcmp(myfile->d_name, ".") == 0))
    	{
    		if(a==0)
    			continue;
    	}
    	if(l)
    	{
    		char *temp=(char *)malloc(2000 * sizeof(char));
    		char *line=(char *)malloc(10000 * sizeof(char));
    		sprintf(temp, "%s/%s", path, myfile->d_name);
        	stat(temp, &mystat);
    		strcat(line,(S_ISDIR(mystat.st_mode)) ? "d" : "-");
			strcat(line,(mystat.st_mode & S_IRUSR) ? "r" : "-");
			strcat(line,(mystat.st_mode & S_IWUSR) ? "w" : "-");
			strcat(line,(mystat.st_mode & S_IXUSR) ? "x" : "-");
			strcat(line,(mystat.st_mode & S_IRGRP) ? "r" : "-");
			strcat(line,(mystat.st_mode & S_IWGRP) ? "w" : "-");
			strcat(line,(mystat.st_mode & S_IXGRP) ? "x" : "-");
			strcat(line,(mystat.st_mode & S_IROTH) ? "r" : "-");
			strcat(line,(mystat.st_mode & S_IWOTH) ? "w" : "-");
			strcat(line,(mystat.st_mode & S_IXOTH) ? "x" : "-");
			char temp2[10000]="\t";
			strcat(temp2,itoa((int)(mystat.st_nlink),10));
			strcat(line,temp2);
			strcpy(temp2,"\t");
			strcat(temp2,getpwuid(mystat.st_uid)->pw_name);
			strcat(line,temp2);
			strcpy(temp2,"\t");
			strcat(temp2,getgrgid(mystat.st_gid)->gr_name);
			strcat(line,temp2);
			strcpy(temp2,"\t");
			strcat(temp2,itoa((long long int)(mystat.st_size),10));
			strcat(line,temp2);
			strcpy(temp2,"\t");
			time_t t = time(NULL);
			struct tm *tmp = localtime(&t);
			char time[200];
			if(tmp->tm_year == localtime(&mystat.st_ctime)->tm_year)
				strftime(time, 200, "%b %e %R", localtime(&mystat.st_mtime));
			else
				strftime(time, 200, "%b %e %Y", localtime(&mystat.st_mtime));			
			strcat(temp2,time);
			strcat(line,temp2);
			strcpy(temp2,"\t");
			strcat(temp2,myfile->d_name);
			strcat(line,temp2);
			strcpy(temp2,"\t");
			printf("%s\n",line);
    	}
    	else
    	{
    		printf("%s\n", myfile->d_name);
    	}
    }
}
void pinfo(char *arg){
	char p_name[1000]="/proc/",path2[2000];
	strcat(p_name,arg);
	sprintf(path2,"%s%s",p_name,"/exe");
	strcat(p_name,"/stat");
	char result[1000]="";
	//printf("%s\n", path2);
	int check=readlink(path2, result, sizeof(result));
	int handle = open(p_name, O_RDONLY);
	if(handle==-1 || check==-1)		
	{
		perror("Pinfo error");
		return;
	}
	char data[5000];
	read(handle, data, 5000);
	// printf("%s\n", data);
	int i = 0;
	char **tokenset = (char**)malloc(5000 * sizeof(char* ));
	char *token=(char *)malloc(5000 * sizeof(char));
	token = strtok(data, " ");
	while(token != NULL)
	{
		tokenset[i] = token;
		++i;
		token = strtok(NULL, " ");
	}
	if(strncmp(result, home, strlen(home))==0)
	{
		char *target = (char *)malloc(1000 * sizeof(char));	
		getSubString(result,target,strlen(home), strlen(result)-1);
		char temp[1000]="~";
		strcat(temp,target);
		strcpy(result,temp);
	}
	printf("pid -- %s\n", tokenset[0]);
	printf("Process Status -- %s\n", tokenset[2]);
	printf("memory-- %s\n", tokenset[23]);
	printf("Executable Path -- %s\n", result);
}
int main()
{
	char *user,*machine;
	char history[21][500];
	int front, rear, reply;
	user = (char *)malloc(1000 * sizeof(char));
	machine = (char *)malloc(1000 * sizeof(char));
	getlogin_r(user, 1000);
	gethostname(machine, 1000);
	getcwd(home, 1000);
	while(1) 
	{
		int status;
		// printf("*\n");
		int pid=waitpid(-1, &status, WNOHANG );
		while (pid > 0)
        {
            char *pname;
            // printf("%d\n", pid);
            for (int i = 0; i < bg; ++i)
            {
                if (bg_processid[i] == pid)
                {
                    char pname[100]="";
                    strcat(pname,bg_processname[i]);
                    bg_processid[i] = -1;
                    fprintf(stderr, "%s with pid %d exited normally.\n", pname, (int)pid);
                    break;
                }
            }
            pid=waitpid(-1, &status, WNOHANG );
        }
		printf("<%s@%s:%s>", user, machine, p_dir);
		char *total = (char *)malloc(10000 * sizeof(char));
		size_t length=0;
		int got_back = getline(&total, &length, stdin);
		char *temptotal = (char *)malloc(10000 * sizeof(char));
		strcpy(temptotal,total);
		if(got_back <= 1)
			continue;
		// printf("%s\n", total);
		char *temp_input = (char *)malloc(1000 * sizeof(char));
		temp_input = strtok(total, ";");
		char **commands = (char **)malloc(1000 * sizeof(char *));
		int cmdcount=0;
		while(temp_input != NULL)
		{
			commands[cmdcount] = temp_input;
			temp_input = strtok(NULL, ";");
			cmdcount++;
		}
		commands[cmdcount-1][strlen(commands[cmdcount-1])-1]=0;
		for(int i=0;i<cmdcount;i++)
		{
			commands[i]=trimwhitespace(commands[i]);
			// printf("%s\n", commands[i]);
		}
		reply = insq(history, &rear, temptotal);
    	if(reply==-1)
    	{
    		for(int i=2;i<=rear;i++)
    		{
    			sprintf(history[i-1],"%s",history[i]);
    		}
    		sprintf(history[rear],"%s",temptotal);
    	}
    	// for(int i=rear;i>(rear-10<0?0:rear-10);i--)
	    // 	printf("%s", history[i]);
		for(int i=0;i<cmdcount;i++)
		{
			if(commands[i][0]=='\0')
				continue;
			int argc=0;
			char **argv = (char **)malloc(1000 * sizeof(char *));
			char* token = strtok(commands[i], delimit);  
		    while (token != NULL) 
		    { 
		        argv[argc]=token;
		        token = strtok(NULL, delimit);
		        argc++; 
	    	}
	    	// printf("%d\n", argc);
	    	// for(int j=0;j<argc;j++)
	    	// {
	    	// 	printf("%s\n", argv[j]);
	    	// } 
	    	int amp=0;
	    	if(argv[argc-1][0]=='&')
	    		{amp=1;argc--;}
	    	if(strcmp(argv[0],"pwd")==0)
	    	{
	    		if(argc==1)
	    		{
	    			pwd2();
	    		}
	    		else
	    			invalid("pwd");
	    	}
	    	else if(strcmp(argv[0],"cd")==0)
	    	{
	    		if(argc==2)
	    		{
	    			int check=cd(argv[1]);
	    			if(!check)
	    				perror("Illegal cd");
	    		}
	    		else
	    			invalid("cd");
	    	}
	    	else if(strcmp(argv[0],"echo")==0)
	    	{
	    		echo(argc,argv);
	    	}
	    	else if(strcmp(argv[0],"ls")==0)
	    	{
	    		if(argc>4)
	    			{invalid("ls");continue;}
	    		int ls_a=0,ls_l=0,folcheck=0;
	    		char folder[1000];
	    		for (int i = 1; i < argc; ++i)
	    		{
	    			if(strcmp(argv[i],"-a")==0)
	    				ls_a=1;
	    			else if(strcmp(argv[i],"-l")==0)
	    				ls_l=1;
	    			else if(strcmp(argv[i],"-la")==0 || strcmp(argv[i],"-al")==0)
	    			{
	    				ls_l=1;
	    				ls_a=1;
	    			}
	    			else
	    			{
	    				if(!folcheck)
	    				{
	    					folcheck=1;
	    					strcpy(folder,argv[i]);
	    				}
	    				else
	    				{
	    					invalid("ls");
	    					continue;
	    				}
	    			}
	    		}
	    		if(folcheck==1)
	    			ls(ls_a,ls_l,folder);
	    		else
	    		{
	    			char *temp=(char *)malloc(1000 * sizeof(char));
	    			sprintf(temp,"%s",p_dir);
	    			ls(ls_a,ls_l,temp);
	    		}
	    	}
	    	else if(strcmp(argv[0],"pinfo")==0)
	    	{
	    		if(argc>2)
	    			{invalid("pinfo");continue;}
	    		char *temp=(char *)malloc(1000 * sizeof(char));
	    		if(argc==1)
	    		{
	    			sprintf(temp,"%s",itoa(getpid(),10));
	    			pinfo(temp);
	    		}
	    		else
	    		{
	    			sprintf(temp,"%s",argv[1]);
	    			pinfo(temp);
	    		}
	    	}
	    	else if(strcmp(argv[0],"history")==0)
	    	{
	    		if(argc==1)
	    		{
	    			for(int i=rear;i>((rear-10<0)?0:rear-10);i--)
	    				printf("%s", history[i]);
	    		}
	    		else if(argc==2 && (strlen(argv[1])==1 || strlen(argv[1])==2))
	    		{
	    			int num=0;
	    			if(strlen(argv[1])==1)
	    				num+=(int)argv[1][0]-48;
	    			else if(strlen(argv[1])==2)
	    				num+=((int)argv[1][0]-48)*10+(int)argv[1][1]-48;
	    			if(num>1 && num<=10)
	    			{
	    				int temp=((rear-num)<0)?0:rear-num;
	    				for(int i=rear;i>(temp);i--)
	    					printf("%s",history[i]);	
	    			}
	    			else
	    			{
	    				invalid("history");
	    			}
	    		}
	    		else
	    		{
	    			invalid("history");
	    		}
	    	}
	    	else
	    	{
	    		argv[argc]=NULL;
	    		int status;
	    		if(!amp)
	    		{
	    			int pid=fork();
		    		if(pid==0)
		    		{
		    			int temp=execvp(argv[0],argv);
		    			if(temp==-1)
		    				printf("Command not found\n");
		    			exit(1);
		    		}
		    		waitpid(pid, &status, WUNTRACED);
		    	}
		    	else
		    	{
		    		int pid=fork();
		    		int sdf=0;
		    		if(pid==0)
		    		{
		    			int temp=execvp(argv[0],argv);
		    			if(temp==-1)
		    				printf("Command not found\n");
		    			exit(1);
		    		}
		    		else
		    			printf("Process with pid %d has started\n",pid);
		    		bg_processid[bg] = (int)pid;
					strcpy(bg_processname[bg], argv[0]);
					bg++;
					waitpid(pid, &status, WNOHANG);
		    	}
	    	}
	    } 
		
	}
}
