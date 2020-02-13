#ifndef SOFTDEV_H
#define SOFTDEV_H

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class softdev; }
QT_END_NAMESPACE

class softdev : public QMainWindow
{
    Q_OBJECT

public:
    softdev(QWidget *parent = nullptr);
    ~softdev();

private slots:
    void on_projBtn_pressed();

    void on_homeBtn_pressed();

    void on_compBtn_pressed();

    void on_settingsBtn_pressed();

    void on_addProjBtn_pressed();

    void on_editProfBtn_pressed();

    void on_pushButton_2_pressed();

private:
    Ui::softdev *ui;
};
#endif // SOFTDEV_H
