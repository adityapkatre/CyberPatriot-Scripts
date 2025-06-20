#!/bin/bash

cd /etc/pure-ftpd

echo 'yes' > ChrootEveryone

echo 'yes' > BrokenClientsCompatibility

echo '50' > MaxClientsNumber

echo '5' > MaxClientsPerIP

echo 'yes' > Daemonize

echo 'no' > VerboseLog

echo 'yes' > DisplayDotFiles

echo 'yes' > ProhibitDotFilesWrite

echo 'yes' > NoChmod

echo 'no' > AnonymousOnly

echo 'yes' > NoAnonymous

echo 'no' > PAMAuthentication

echo 'no' > UnixAuthentication

echo '/etc/pure-ftpd/pureftpd.pdb' > PureDB

echo 'yes' > DontResolve

echo '15' > MaxIdleTime

echo '2000 8' > LimitRecursion

echo 'yes' > AntiWarez

echo 'no' > AnonymousCanCreateDirs

echo '4' > MaxLoad

echo 'no' > AllowUserFXP

echo 'no' > AllowAnonymousFXP

echo 'no' > AutoRename

echo 'yes' > AnonymousCantUpload

echo 'yes' > NoChmod

echo '80' > MaxDiskUsage

echo 'yes' > CustomerProof

echo '0' > TLS