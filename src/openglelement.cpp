#include <QDebug>
#include "openglelement.h"

OpenGLElement::OpenGLElement(QObject *parent) :
    QObject(parent)
{
    qDebug("func : %s", __FUNCTION__);
}
