#include "qmusicplayer.h"

#include <iostream>

QMusicPlayer::QMusicPlayer(QWidget *parent) :
    QWidget(parent),
    mPlaylist(nullptr),
    mPlaylistIndex(0),
    mLoop(false)
{
    connect(&mMusic, SIGNAL(aboutToFinish()), this, SLOT(songAboutToFinish()));
    connect(&mMusic, SIGNAL(finished()), this, SLOT(songFinished()));
}

void QMusicPlayer::setPlaylist(QPlaylist *playlist)
{
    if(mPlaylist)
    {
        mMusic.stop();
        mPlaylistIndex = 0;
    }

    mPlaylist = playlist;
}

void QMusicPlayer::play()
{
    if(mPlaylist && !mMusic.getStatus() != sf::Music::Playing)
    {
        // If something was already playing
        if(mMusic.getPlayingOffset() > sf::Time::Zero)
        {
            mMusic.play();

            emit statusChanged(sf::Music::Playing);
        }
        else
        {
            if(mPlaylist->find(mPlaylistIndex) != mPlaylist->end())
            {
                QSong song = (*mPlaylist)[mPlaylistIndex];
                mMusic.openFromFile(song.model()->filepath().toStdString());
                mMusic.play();

                std::cout << "Start playing : " << song.model()->filepath().toStdString() << std::endl;

                emit sourceChanged(song);
                emit statusChanged(sf::Music::Playing);
            }
        }
    }
}

void QMusicPlayer::pause()
{
    mMusic.pause();

    emit statusChanged(sf::Music::Paused);
}

void QMusicPlayer::stop()
{
    mMusic.stop();
    mPlaylistIndex = 0;

    emit statusChanged(sf::Music::Stopped);
}

void QMusicPlayer::previous()
{
    if(mPlaylist && mPlaylistIndex > 0)
    {
        mMusic.stop();
        mPlaylistIndex -= 1;
        play();
    }
    else if(mPlaylist && mPlaylistIndex == 0 && mLoop)
    {
        mMusic.stop();
        mPlaylistIndex = mPlaylist->size() - 1;
        play();
    }
}

void QMusicPlayer::next()
{
    if(mPlaylist && mPlaylistIndex < (mPlaylist->size()-1))
    {
        mMusic.stop();
        mPlaylistIndex += 1;
        play();
    }
    else if(mPlaylist && mPlaylistIndex == (mPlaylist->size()-1) && mLoop)
    {
        mMusic.stop();
        mPlaylistIndex = 0;
        play();
    }
}

void QMusicPlayer::setVolume(int volume)
{
    if(volume >= 0 && volume <= 100)
    {
        mMusic.setVolume((float)volume);

        emit volumeChanged(volume);
    }
}


void QMusicPlayer::songAboutToFinish()
{

}

void QMusicPlayer::songFinished()
{
    next();
}