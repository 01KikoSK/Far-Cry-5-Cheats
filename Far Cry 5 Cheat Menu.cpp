#include <iostream>
#include <windows.h>
#include <TlHelp32.h>

// Constants
const int PROCESS_ID = 12345; // Replace with the process ID of Far Cry 5
const int BULLETS_PER_CLIP_ADDRESS = 0x12345678; // Replace with the memory address of bullets per clip
const int AI_TO_PLAYER_DAMAGE_ADDRESS = 0x23456789; // Replace with the memory address of ai to player damage

// Functions
void setBulletsPerClip(int bullets) {
    HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS, FALSE, PROCESS_ID);
    if (hProcess != NULL) {
        WriteProcessMemory(hProcess, (LPVOID)BULLETS_PER_CLIP_ADDRESS, &bullets, sizeof(int), NULL);
        CloseHandle(hProcess);
    }
}

void setAIToPlayerDamage(float damage) {
    HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS, FALSE, PROCESS_ID);
    if (hProcess != NULL) {
        WriteProcessMemory(hProcess, (LPVOID)AI_TO_PLAYER_DAMAGE_ADDRESS, &damage, sizeof(float), NULL);
        CloseHandle(hProcess);
    }
}

int main() {
    // Set bullets per clip to 999
    setBulletsPerClip(999);

    // Set ai to player damage to 0 (invincible)
    setAIToPlayerDamage(0);

    // Cheat menu
    while (true) {
        std::cout << "Cheat Menu:\n";
        std::cout << "1. Set bullets per clip to 999\n";
        std::cout << "2. Set ai to player damage to 0 (invincible)\n";
        std::cout << "3. Exit\n";
        std::cout << "Enter your choice: ";

        int choice;
        std::cin >> choice;

        switch (choice) {
            case 1:
                setBulletsPerClip(999);
                break;
            case 2:
                setAIToPlayerDamage(0);
                break;
            case 3:
                exit(0);
                break;
            default:
                std::cout << "Invalid choice. Try again.\n";
        }
    }

    return 0;
}