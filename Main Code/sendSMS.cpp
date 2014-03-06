#include<iostream.h>
#include<fstream.h>

class sendSMS
{
	public: 
	char phno[20],company_name[20],share_value[15],sms_to_send[40],filename[80],temp[80];
 	
	sendSMS(char *no,char *name)
	{
		strcpy(phno,no);
		strcpy(company_name,name);
	}
	void readFILE()
	{
		char str[20];
		for(int i=0;i<=39;i++)
			sms_to_send[i]=0;
		sprintf(filename,"/root/mcs/sms/%s_%s.sms",phno,company_name);
		strcpy(temp,filename);
		fstream sms_file(filename,ios::in);
		while(sms_file>>str)	
		{
			if(strcmp(str,"#")!=0)
			{
				if(strcmp(str,"NSE:")==0)
				{
					strcat(sms_to_send,"\n");
					strcat(sms_to_send,str);
				}
				else
				{
					strcat(sms_to_send,str);	
					strcat(sms_to_send," ");		
				}
			}
		}
		sms_file.close();
		sendREQUEST();
	}
	void sendREQUEST()
	{
		char buffer[100],unlinkbuffer[100];
		sprintf(buffer,"echo \"%s : %s\" | gammu --sendsmsdsms TEXT %s MYSQL /etc/smsdrc",company_name,sms_to_send,phno);
		printf("\n%s\n",buffer);
		system(buffer);
		sprintf(unlinkbuffer,"unlink %s",temp);
		printf("%s",unlinkbuffer);
		system(unlinkbuffer);
	}
};

