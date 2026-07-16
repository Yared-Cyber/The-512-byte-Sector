# Minimal 512-Byte Boot Sector

A bare-metal, x86 assembly boot sector that boots on real (or emulated) hardware, prints a single character to the screen using BIOS Video Services (`int 0x10`), and halts. 

This project bypasses modern operating systems completely, running directly on the CPU in 16-bit Real Mode.

---

## 📁 Repository Structure

* **`src/`**: Contains the raw assembly source code.
* **`scripts/`**: Bash script to automate assembling the code and launching QEMU.

---

## 🛠️ Prerequisites

Before running this project, you need to install an assembler (**NASM**) and an emulator (**QEMU**).

### On macOS
```bash
brew install nasm qemu
