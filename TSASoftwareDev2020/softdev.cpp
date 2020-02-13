#include "softdev.h"
#include "ui_softdev.h"

softdev::softdev(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::softdev)
{
    ui->setupUi(this);
    ui->stackedWidget->setCurrentIndex(1);
}

softdev::~softdev()
{
    delete ui;
}


void softdev::on_projBtn_pressed()
{
    ui->stackedWidget_2->setCurrentIndex(1);
}

void softdev::on_homeBtn_pressed()
{
    ui->stackedWidget_2->setCurrentIndex(0);
}

void softdev::on_compBtn_pressed()
{
    ui->stackedWidget_2->setCurrentIndex(2);
}

void softdev::on_settingsBtn_pressed()
{
    ui->stackedWidget_2->setCurrentIndex(3);
}

void softdev::on_addProjBtn_pressed()
{
    ui->stackedWidget_2->setCurrentIndex(4);
}

void softdev::on_editProfBtn_pressed()
{
    ui->stackedWidget_2->setCurrentIndex(5);
}

void softdev::on_pushButton_2_pressed()
{
    ui->stackedWidget->setCurrentIndex(0);
    ui->stackedWidget_2->setCurrentIndex(0);
    QString username = ui->userInput->text();
}
