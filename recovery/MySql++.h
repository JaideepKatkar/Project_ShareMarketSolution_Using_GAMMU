/***************************************************************************
    copyright            : (C) 1999 by Frederik Bilhaut
    email                : bilhaut_f@mail.cpod.fr
***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#ifndef MYSQLXX_H
#define MYSQLXX_H

#include <mysql/mysql.h>
#include "RefCounter.h"

class MySqlClient;
class MySqlResult;
class MySqlRow;
typedef MYSQL_FIELD MySqlField;

class MySqlClient
  {
  public:
    MySqlClient(void);
    ~MySqlClient(void);
    int connect(const char *, const char *, const char *, int = 0, const char * =0);
    void close(void);
    int selectDB(const char *);
    int query(const char *);
    char *error(void);
    MySqlResult storeResult(void);
    int affectedRows(void);
    int createDB(const char *);
    int dropDB(const char *);
    MySqlResult listFields(const char *, const char *);
    MySqlResult listDbs(const char *);
    MySqlResult listTables(const char *);
    int shutdown(void);
    char *serverInfo(void);
    char *hostInfo(void);
    unsigned int protoInfo(void);
    MySqlResult listProcesses(void);
    int reload(void);
    char *stat(void);
  private:
    MYSQL mysql;
    bool connected;
  };

class MySqlResult
  {
  public:
    MySqlResult(void);
    MySqlResult(MYSQL_RES *);
    MySqlResult(const MySqlResult &);
    ~MySqlResult(void);
    MySqlRow fetchRow(void);
    MySqlField *fetchField(void);
    int numFields(void);
    int numRows(void);
    void dataSeek(uint);
    int eof(void);
    operator void*(void);
  private:
  	static RefCounter refCounter;
    MYSQL_RES *res;
  };

class MySqlRow
  {
  public:
    MySqlRow(void);
    MySqlRow(MYSQL_ROW);
    char *operator[](int);
    operator void*(void);
  private:
    MYSQL_ROW row;
  };

#endif
