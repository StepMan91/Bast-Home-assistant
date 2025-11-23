# Home Assistant Device Integrations

## 1. Tuya (Smart Life)
The official Tuya integration is the recommended way to connect your Tuya/Smart Life devices.

### Prerequisites
- Tuya IoT Platform account (https://iot.tuya.com/)
- Tuya Smart or Smart Life app account

### Setup Steps
1.  **Create Cloud Project**: Log in to the Tuya IoT Platform and create a new Cloud project.
2.  **Link App Account**: In your project, go to **Devices** > **Link Tuya App Account** and scan the QR code with your Smart Life app.
3.  **Get Keys**: Note your **Access ID** and **Access Secret** from the project overview.
4.  **Add Integration**:
    - In Home Assistant, go to **Settings** > **Devices & Services**.
    - Click **Add Integration** and search for "Tuya".
    - Enter your Access ID, Access Secret, and User Code (from the app).

## 2. Google Home
To control Home Assistant entities from Google Home or expose Google Home devices (limited), you have two main options:

### Option A: Nabu Casa (Easiest/Paid)
1.  Go to **Settings** > **Home Assistant Cloud**.
2.  Sign up/Login.
3.  Enable **Google Assistant**.

### Option B: Manual Setup (Free/Complex)
Requires setting up a project in the Google Actions Console and configuring dynamic DNS/SSL.
1.  See [Official Documentation](https://www.home-assistant.io/integrations/google_assistant/) for the latest steps as they change frequently.

## 3. Eufy Security
Eufy devices are best integrated using the custom `eufy_security` integration, which requires HACS (Home Assistant Community Store).

### Step 1: Install HACS
1.  **Terminal Access**: You need terminal access to your Home Assistant container.
2.  **Run Installer**:
    ```bash
    wget -O - https://get.hacs.xyz | bash -
    ```
3.  **Restart**: Restart Home Assistant.
4.  **Configure**: Go to **Devices & Services**, add "HACS", and follow the GitHub authentication steps.

### Step 2: Install Eufy Security Add-on (Optional but recommended for streaming)
Some Eufy features require the `eufy-security-ws` add-on. Since we are running Core Docker (not OS), you might need to run this as a separate container if you need advanced streaming features.
*For basic sensor data, proceed to Step 3.*

### Step 3: Install Integration
1.  Open HACS in Home Assistant.
2.  Search for "Eufy Security".
3.  Install and restart Home Assistant.
4.  Go to **Settings** > **Devices & Services** > **Add Integration** > **Eufy Security**.
5.  Enter your Eufy account credentials.
