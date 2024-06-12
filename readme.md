# README

## Running the Script

This script is designed to help you download, prepare, and run a script to obtain your rotate key.

## Quick Setup

If you just want to get started with minimal fuss, run the following commands in your terminal:

```
# Download the setup script
curl -O https://raw.githubusercontent.com/tumrabert/Easy_runner_Analog-Node/main/run_script.bash

# Make the script executable
chmod +x run_script.bash

# Run the script
./run_script.bash
```
### Prerequisites

Before running the script, ensure you have the following:

- **Linux System**: The script is intended for use on Linux systems.
- **`curl` Installed**: Most Linux distributions come with `curl` pre-installed. If it's not available, you can install it using your package manager.
- **`sudo` Permissions**: You may need to provide your `sudo` password to execute certain commands within the script.

### Instructions

Follow these steps to download and run the script:

1. **Download the Script**:
    - Open a terminal window.
    - Navigate to the directory where you want to save the script (e.g., your home directory).
    
      ```bash
      curl -O https://raw.githubusercontent.com/tumrabert/Easy_runner_Analog-Node/main/run_script.bash
      ```
    - This command will download the script and save it as `run_script.bash`.

2. **Make the Script Executable**:
    - Grant execute permission to the script with the following command:
    
      ```bash
      chmod +x run_script.bash
      ```

3. **Run the Script**:
    - Execute the script using:
    
      ```bash
      ./run_script.bash
      ```
    - You may be prompted for your `sudo` password. Enter it securely (note that the characters won't be displayed as you type).

4. **Enter Your Name**:
    - The script will prompt you to enter your name. Type your desired name and press Enter.

5. **View Your Rotate Key**:
    - Once the script completes, it will display your rotate key in JSON format.

### Important Notes

- The downloaded script (`run_script.bash`) contains specific commands to obtain your rotate key. Ensure that you trust the source of the script before executing it.
- Keep your rotate key private. Do not paste it into this README or share it publicly.

### Additional Considerations

- If the script requires additional tools or dependencies (besides `curl`), the instructions will be updated accordingly.
- This guide does not cover troubleshooting for common issues like permission errors or network problems.

For any questions or further assistance, please consult the documentation or contact support.

---

By following the above steps, you should be able to successfully download and execute the script to obtain your rotate key.
