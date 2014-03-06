#include<iostream.h>
#include "util.h"
#include <mysql++.h>
#include <iostream>
#include <iomanip>
#include "./sendSMS.cpp"

using namespace std;
static int cnt=5;
class tokens
{
	mysqlpp::Connection con1;
	char *tokens[20],sender[20];
	public :
	void tokenizer(char *line,mysqlpp::Connection con,char *senderno)
	{
		int i=0,parano=0,len;
		con1=con;
		strcpy(sender,senderno);
		len=strlen(line);
		if(line[len-1]=='\n')
			line[len-1]='\0';
		puts(line);
		printf("\nin tokenizer ::: %s %s \n",line);
		tokens[i]=(char *)malloc(sizeof(char *));
		tokens[i]=strtok(line," ");
		while(tokens[i]!=NULL)
		{
			if(tokens[i]!=NULL)
			{
				tokens[++i]=(char *)malloc(sizeof(char *));
				tokens[i]=strtok(NULL," ");
				if(tokens[i]!=NULL)
					parano++;
				else
					break;
			}
		}
	//	printf("\n %d \n",parano);
		/*for(i=0;i<=parano;i++)
		{
			cout<<tokens[i]<<endl;
		}*/
		//if(strcasecmp(tokens[0],"register")==0)
		//	insert();
		

		validation(parano,tokens[0]);	
	}
	void insert()
	{
		mysqlpp::Query query1 = con1.query();
         	query1 << "insert into reg values("<<cnt++<<",\""<<tokens[1]<<"\");";
		mysqlpp::Result res = query1.store();
	//	mysqlpp::Query query1 = query.insert(row);
	}
	void validation(int cnt,char *token)
	{
		char buffer[80],deletebuf[80];
		mysqlpp::Query query1 = con1.query();
		cout<<"select username from registration where phno="<<sender<<";";
		query1 << "select username from registration where phno="<<sender<<";";
		mysqlpp::Result res = query1.store();
		if(res)
		{
			if(strcasecmp(token,"share")==0)
			{
				mysqlpp::Row row;
				int i;
				row=res.at(0);
				cout<<"\nUSER NAME:"<<row.at(0)<<endl;
				if(cnt >= 2 || cnt < 1)
				{
					char buffer[100];
					sprintf(buffer,"echo \" Sorry! Please send the sms in correct format...  \" | gammu --sendsmsdsms TEXT %s MYSQL /etc/smsdrc",sender);
					printf("\n%s\n",buffer);
					system(buffer);
				}
				else
				{
					printf("\nIN TOKEN....\n\n");
					sprintf (buffer,"java StockSearch %s %s",tokens[1],sender);
					system(buffer);
					sendSMS send(sender,tokens[1]);
					send.readFILE();
					printf("\nAfter reading file\n\n");
				}
			}
			else
			{
				char buffer[100];
				sprintf(buffer,"echo \" Sorry! Please send the sms in correct format...  \" | gammu --sendsmsdsms TEXT %s MYSQL /etc/smsdrc",sender);
				printf("\n%s\n",buffer);
				system(buffer);
			}
		}
		else
		{
			cout<<"Invalid user\n\n";
		}
	}
};

