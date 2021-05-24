#!/bin/bash

DATE_NOW=$(date -Ru | sed 's/\+0000/GMT/')
AZ_VERSION="2018-03-28"
AZ_BLOB_URL="https://staccinftab01.blob.core.windows.net/logs-backupstatusreport"
AZ_BLOB_CONTAINER="logs-backupstatusreport"
AZ_BLOB_TARGET="${AZ_BLOB_URL}/${AZ_BLOB_CONTAINER}/"
AZ_SAS_TOKEN="sp=racwdl&st=2021-05-11T18:25:12Z&se=2024-01-01T02:25:12Z&sv=2020-02-10&sr=c&sig=H8Symr7XRnIo5dk%2F0KYWaR30FJHPPivgBcCatJQ4Aw8%3D"

AZ_SAS_URL="https://staccinftab01.blob.core.windows.net/logs-backupstatusreport?sp=racwdl&st=2021-05-11T18:25:12Z&se=2024-01-01T02:25:12Z&sv=2020-02-10&sr=c&sig=H8Symr7XRnIo5dk%2F0KYWaR30FJHPPivgBcCatJQ4Aw8%3D"



curl -v -X PUT -H "Content-Type: application/octet-stream" -H "x-ms-date: ${DATE_NOW}" -H "x-ms-version: ${AZ_VERSION}" -H "x-ms-blob-type: BlockBlob" --data-binary "/c/Git/gondolf/python/test.log" "${AZ_BLOB_TARGET}test.log${AZ_SAS_TOKEN}"



# curl -X PUT -T /c/temp/info.txt -H "x-ms-date: $(date -u)" -H "x-ms-blob-type: BlockBlob" "https://strgzuehlke.blob.core.windows.net/container1/info.txt?sv=2018-03-28&ss=bfqt&srt=sco&sp=rwdlacup&se=2020-05-12T23:31:24Z&st=2019-10-06T15:31:24Z&spr=https,http&sig=CsaObwbTgo%2BmRuSf5KQ6W2mMXN9jgtghP42%2BwU4kF%2B8%3D"


curl -X PUT -T /c/Git/gondolf/python/test.log -H "x-ms-date: $(date -u)" -H "x-ms-blob-type: BlockBlob" $AZ_SAS_URL