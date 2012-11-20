#include "databasemanager.h"
#include <QVariant>

#include <iostream>

DatabaseManager::DatabaseManager()
{
    // Tell Qt we use an SQLite database
    mDatabase = QSqlDatabase::addDatabase("QSQLITE");
    // Fixed database name
    mDatabase.setDatabaseName("db.sqlite");
    // Open the database and create the tables if not exists
    open();
    createTables();
}

DatabaseManager::~DatabaseManager()
{
    close();
}

void DatabaseManager::open() throw(DatabaseManager::Error)
{
    if(!mDatabase.open())
            throw DatabaseManager::OpenDbError;
}

void DatabaseManager::close()
{
    mDatabase.close();
}

QSqlError DatabaseManager::lastError()
{
    return mDatabase.lastError();
}


QSqlDatabase* DatabaseManager::db()
{
    return &mDatabase;
}


void DatabaseManager::createTables() throw(DatabaseManager::Error)
{
    bool ret = false;
    if(mDatabase.isOpen())
    {
        QSqlQuery query;
        // Creating table songs
        ret = query.exec("CREATE TABLE IF NOT EXISTS songs("
                         "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                         "title VARCHAR(50) NOT NULL, "
                         "artist VARCHAR(50) NOT NULL, "
                         "album VARCHAR(50), "
                         "filepath VARCHAR(150) UNIQUE NOT NULL, "
                         "nbplay INTEGER, "
                         "mark INTEGER,"
                         "lyrics TEXT"
                         ")"); // After a lot of different creation, setting the primary key on id to
                               // benefit from auto-increment and unique on filepath to only have one
                               // song corresponding to one file is the best way

        // If there was an error while creating the tables.
        if(!ret)    throw DatabaseManager::AccessError; // Throw an error if one occured


        // Creating table playlists
        ret = query.exec("CREATE TABLE IF NOT EXISTS playlists("
                         "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                         "name VARCHAR(50) NOT NULL"
                         ")");

        // If there was an error while creating the tables.
        if(!ret)    throw DatabaseManager::AccessError; // Throw an error if one occured


        // Creating table playlists_songs (link between both previous tables)
        ret = query.exec("CREATE TABLE IF NOT EXISTS playlists_songs("
                         "id INTEGER, "
                         "id_playlist INTEGER, "
                         "id_song INTEGER, "
                         "PRIMARY KEY(id, id_playlist, id_song),"
                         "FOREIGN KEY(id_playlist) REFERENCES playlists(id),"
                         "FOREIGN KEY(id_song) REFERENCES songs(id)"
                         ")");

        // If there was an error while creating the tables.
        if(!ret)    throw DatabaseManager::AccessError; // Throw an error if one occured
    }
}
