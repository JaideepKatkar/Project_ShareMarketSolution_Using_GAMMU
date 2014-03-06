import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.*;
import java.io.*;


public class StockSearch 
{
	Connection conn;
	PreparedStatement pst; 
	ResultSet rs;
	String phno,company_name,BSEshare,NSEshare,BSEdatetime,NSEdatetime;
	StockSearch()
	{
		  /* try
		   {
		   	Class.forName("com.mysql.jdbc.Driver");
			 conn=DriverManager.getConnection("jdbc:mysql://localhost/sms?user=root&password=fedora");
			
        	   } catch (Exception ex) {
			System.out.println(ex);
            		// handle the error
        	   }
		//rs=pst.createStatement("select comp_name from share where share_value=NULL");
		/*while(rs.next())
		{
			
		}*/
	}

	public void getdataweb(String company_name,String phno) throws IOException 
	{
		this.company_name=company_name;
		this.phno=phno;
		try
		{
		URL url = new URL("http://www.sharekhan.com/News/CompanyBasicQuote.aspx?sskicode="+company_name);
		//URL url = new URL("");
		HttpURLConnection httpConnection = (HttpURLConnection)url.openConnection();
		httpConnection.setRequestMethod("GET");
		httpConnection.connect();
		InputStream inputStream = httpConnection.getInputStream();
		StringBuffer htmlString = new StringBuffer();
		int ch;
		do {
			ch = inputStream.read();
			htmlString.append((char)ch);
		}	while(ch != -1);
		String toParse = htmlString.toString();
		//System.out.println(toParse);
		BSEparsing(toParse);
		NSEparsing(toParse);
		}catch(Exception e){
		try
		{
			File file=new File("/root/mcs/sms/"+phno+"_"+company_name+".sms");
			file.createNewFile();
			FileWriter fstream = new FileWriter(file);
        		BufferedWriter out = new BufferedWriter(fstream);
			out.write("CANNOT COMMUNICATE WITH GIVEN SERVICE ");
			out.close();
			fstream.close();}catch(Exception ek){}
		}
		//System.out.println("IN GET");
	}
	
	public void BSEparsing(String toParse)
	{
		int i,j,k;
		String substr;
		i=toParse.indexOf("<span id=\"BasicQuote1_lblBse1\">");
		j=i+31;
		substr=toParse.substring(j,j+10);
		k=substr.indexOf("<");
		BSEshare=substr.substring(0,k);
		BSEshare+=" # ";
		System.out.println(" \nBSE Share:"+BSEshare);
		i=toParse.indexOf("<span id=\"BasicQuote1_lblBse5\">");
		j=i+31;
		substr=toParse.substring(j,j+20);
		k=substr.indexOf("<");
		BSEdatetime=substr.substring(0,k);
		BSEdatetime+=" # ";
		System.out.println(" \nBSE date time:"+BSEdatetime);

	}
	
	public void NSEparsing(String toParse)
	{
		int i,j,k;
		String substr;
		i=toParse.indexOf("<span id=\"BasicQuote1_lblNse1\">");
		j=i+31;
		substr=toParse.substring(j,j+10);
		k=substr.indexOf("<");
		NSEshare=substr.substring(0,k);
		NSEshare+=" # ";
		System.out.println(" \nNSE Share:"+NSEshare);
		i=toParse.indexOf("<span id=\"BasicQuote1_lblNse5\">");
		j=i+31;
		substr=toParse.substring(j,j+20);
		k=substr.indexOf("<");
		NSEdatetime=substr.substring(0,k);
 		System.out.println(" \nNSE date time:"+NSEdatetime);
		createFILE();
	}
	
	public void createFILE()
	{
		try
		{
			System.out.println(phno);
 			File file=new File("/root/mcs/sms/"+phno+"_"+company_name+".sms");
			file.createNewFile();
			FileWriter fstream = new FileWriter(file);
        		BufferedWriter out = new BufferedWriter(fstream);
			out.write("BSE: ");
			out.write(BSEshare);
			out.write(BSEdatetime);
			out.write(" NSE: ");
			out.write(NSEshare);
 			out.write(NSEdatetime);
			out.close();
			fstream.close();
			
/*			 boolean success = file.createNewFile();
        		if (success) {*/
            			//System.out.println("CREATED");
        		/*} else {
            			System.out.println("NOT CREATED");
        			}*/
			
		}catch(Exception e){System.out.println(e);}
	}

	public static void main(String args[])
	{
		StockSearch obj=new StockSearch();
		try 
		{
			obj.getdataweb(args[0],args[1]);
			System.out.println(""+args[0]+" : "+args[1]);	
		}catch(Exception e){}
	}
}	

