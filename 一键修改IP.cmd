 @echo off
cls
echo һ���޸�IP��ַ
set NAME="��̫��"



echo.
echo �Զ���ȡIP��1
echo.
echo ��Ϊ��̬��2

set /pKEY=[ѡ����:]
if %KEY% ==1 goto ONE
if %KEY% ==2 goto TWO


:ONE
echo �Զ���ȡ
netsh interface ip set address %NAME% source=dhcp
netsh interface ip set dnsservers %NAME% source=dhcp
echo ������Ϊ�Զ���ȡ
ipconfig /all
pause
exit
:TWO
echo ��̬IP
netsh interface ip set address %NAME% static 192.168.10.134 255.255.255.0 192.168.10.10
netsh interface ip set dnsservers %NAME% static 202.106.0.20 primary validate=no






echo �������
ipconfig /all
pause

