#include "softdev.h"

#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    softdev w;
    w.show();
    return a.exec();
}
