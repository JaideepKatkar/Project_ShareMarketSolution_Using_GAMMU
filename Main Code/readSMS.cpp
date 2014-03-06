#include "util.h"
#include <mysql++.h>
#include <iostream>
#include <iomanip>
#include "./token.cpp"

using namespace std;

int main(int argc, char *argv[])
{
	char sms[50],senderno[20];
	printf("\nTHROUGH GAMMU : \n %s %s %s \n",argv[1],argv[2],argv[3]);
        // Connect to the sample database.
        mysqlpp::Connection con("sms","localhost","root","fedora");
    /*    // Retrieve a subset of the sample stock table set up by resetdb
    //     mysqlpp::Query query = con.query();
      //   query << "select SenderNumber,TextDecoded from inbox ";
        //mysqlpp::Result res = query.store();
        // Display the result set
        //if (res) {
        //        mysqlpp::Row row;
          //      mysqlpp::Row::size_type i;
           //     for (i = 0; row = res.at(i); ++i) 
		{*/
			//cout<< row.at(1)<<endl;
			strcpy(senderno,argv[1]);
			strcpy(sms,argv[2]);
 //			cout<<"SMS : "<<sms<<endl;
			//cout<<" sender no : "<<senderno<<endl;
			strcat(sms," ");
			//strcat(sms,argv[3]);
 			cout<<"SMS :: "<<sms<<endl;
			tokens token;
			token.tokenizer(sms,con,senderno);
	                //cout << row.at(0) <<" "<<row.at(1) << endl;
       // }
       /* else {
                cerr << "Failed to get item list: " << query.error() << endl;
                return 1;
        }*/

        return 0;
}

