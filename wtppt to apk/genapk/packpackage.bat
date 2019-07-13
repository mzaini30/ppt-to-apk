cd genapk
call apktool.bat d -f SingleFile.apk flashmobile
if not %2 == "null" (copy %2 flashmobile\assets\default.wtppt /y)
if not %4 == "null" (
copy %4 flashmobile\assets\appicon.png /y
copy %4 flashmobile\res\drawable-hdpi\icon.png /y
copy %4 flashmobile\res\drawable-ldpi\icon.png /y
copy %4 flashmobile\res\drawable-mdpi\icon.png /y
)
if not %5 == "null" (copy %5 flashmobile\assets\wt.lic /y)
dir /b/s strings.xml > list.txt 
rpname %6 list.txt
java -jar pkn.jar reserved %1
call apktool b flashmobile unsigned.apk
java -classpath tools.jar sun.security.tools.JarSigner -verbose -keystore wt.keystore -storepass 123456 -keypass 123456 -signedjar %3\%1.apk unsigned.apk ts
