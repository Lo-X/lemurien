#ifndef SIDEBAR_H
#define SIDEBAR_H


/**
 * @file
 * @author Benjamin Le Cam
 * @date 29/12/20011
 * @details Ce fichier m'a gentillement été mis à disposition par Benjamin Le Cam
 *          Il est sous license GPL
 */




#include <QtWidgets/QtWidgets>
#include <QPainter>
#include <QPaintEvent>
#include <QIcon>
#include <QtWidgets/QAction>

class SideBar : public QWidget
{
    Q_OBJECT

public:
    SideBar(QWidget *parent = 0);
    ~SideBar();

    void addAction(QAction *action);
    void removeAction(const QString& text);
    QAction *addAction(const QString &text, const QIcon &icon = QIcon());

    void checkAction(const QString& text);
    QAction *checkedAction();

    void clear();

protected:
    void paintEvent(QPaintEvent *event);
    void mousePressEvent(QMouseEvent *event);
    void mouseReleaseEvent(QMouseEvent *event);
    QSize minimumSizeHint() const;

    QAction* actionAt(const QPoint &at);
private:
    QList<QAction*> _actions;
    QAction *_pressedAction;
    QAction *_checkedAction;
};

#endif // SIDEBAR_H
