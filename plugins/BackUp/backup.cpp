#include <QDebug>
#include <QDir>
#include <QString>

#include "backup.h"

BackUp::BackUp() {

}

void BackUp::backUpLocalStore(QString lsOld, QString lsNew) {
    QDir storeDir;

    #ifdef Q_PROCESSOR_X86
    //This route probably does not work and should be changed to /home/[username]/.local/[...]
    storeDir = "~/.local/share/QtProject/zork-i-en.cibersheep/Local Storage/";
    #else
    storeDir = "/home/phablet/.local/share/zork-i-en.cibersheep/Local Storage/";
    #endif
    
    qDebug() << "Checking localStore";
    if (!storeDir.mkdir(storeDir.absolutePath())) {
		//if mkdir = false means folder already exists
		if (storeDir.rename(lsOld, lsNew)) {
			storeDir.rename(lsOld.append("-journal"), lsNew.append("-journal"));
			qDebug() << "Successfully copied old Local Store to new one";
		} 
		else {
			qDebug() << "Renaming LocalStore has failed.";
		}
	}
    
    
   
}
