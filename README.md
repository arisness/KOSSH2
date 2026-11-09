# KOSSH (Kindle On-demand SSH Server)

A lightweight and efficient toggle scriptlet to start and stop a background SSH server (`dropbear`) on jailbroken Amazon Kindle devices. It leverages the binary bundled with KOReader and displays status feedback directly on the E-Ink screen.

---

## Features

- **Toggle On/Off Switch:** Tap once to launch the SSH server; tap again to terminate it.
- **No External Dependencies:** Uses the `dropbear` binary already provided inside your KOReader installation.
- **On-screen E-Ink Feedback:** Prints real-time service status to the display using `eips`:
  - `=== SSH ACTIVO: <KINDLE_IP>:22 ===` (when started with an active Wi-Fi connection).
  - `=== SSH APAGADO ===` (when stopped).
- **Automated Firewall Rules:** Safely opens incoming traffic on port 22 in `iptables` without creating duplicate rules.
- **Persistent SSH Host Key:** Generates and stores the host key (`dropbear_ed25519_host_key`) in `/mnt/us/koreader/settings/SSH/` to prevent host key mismatch warnings between restarts.
- **Native Library Integration:** Compatible with KMP and `sh_integration`, allowing it to appear as an executable book entry with a custom icon in your Kindle library.

---

## Requirements

1. A jailbroken Kindle device (compatible with modern exploits such as WinterBreak, LanguageBreak, Véra, etc.).
2. Support for Scriptlets / `sh_integration` (typically bundled via KMP or the Universal Hotfix).
3. **KOReader** installed in the standard directory: `/mnt/us/koreader`.

---

## Installation

### Kindle Directory Structure

Because the icon is already embedded directly within the script as a Base64 data URI, installation is completely standalone. Simply connect your Kindle via USB and place `KOSSH.sh` into the `documents` folder:

```text
/mnt/us/documents/
└── KOSSH.sh
```

*(Optional: If you ever want to override the embedded icon with an external image, you can still place an `icon.png` inside `/mnt/us/documents/KOSSH.sh.sdr/` and update the `# Icon:` header accordingly).*

---

## Usage

1. Ensure your Kindle is connected to your local Wi-Fi network.
2. Navigate to your Kindle library and tap **KOSSH**.
3. A notification will appear at the top-left corner of the screen displaying the assigned IP address:
   ```text
   === SSH ACTIVO: 192.168.1.150:22 ===
   ```
4. Connect from your preferred terminal or SSH client (Linux, macOS, PowerShell, PuTTY, Termius):
   ```bash
   ssh root@192.168.1.150
   ```
5. To shut down the SSH server, tap **KOSSH** again in your library:
   ```text
   === SSH APAGADO ===
   ```

---

## Scriptlet Configuration (`KOSSH.sh`)

The header contains metadata parsed by `sh_integration`:

```sh
#!/bin/sh
# Name: KOSSH
# Author: Arisness
# Description: SSH server in the background
# Icon: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAA...
```

---

## Author

- **Arisness**

---

## License

This project is licensed under the MIT License.
