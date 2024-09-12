#define _CRT_SECURE_NO_WARNINGS
#include <windows.h>
#include <stdio.h>

void main() {
    HKEY hKey;
    LONG result;

    result = RegOpenKeyEx(HKEY_CURRENT_USER, "test", 0, KEY_ALL_ACCESS, &hKey);
    
    result = RegDeleteKey(hKey, "delete");
    RegCloseKey(hKey);

    _getch();
}