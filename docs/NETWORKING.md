# Networking & External Access

## Port Configuration
Home Assistant listens on port **8123** by default.

## Freebox Port Forwarding
To access Home Assistant from outside your home (e.g., via 4G), you need to forward a port on your Freebox.

1.  **Login**: Access your Freebox OS (usually `http://mafreebox.freebox.fr/`).
2.  **Settings**: Go to **Paramètres de la Freebox** > **Gestion des ports**.
3.  **Add Redirection**:
    - **IP Destination**: `192.168.1.141` (Your Raspberry Pi)
    - **IP Source**: All (Toutes)
    - **Protocol**: TCP
    - **Start Port (External)**: `8123` (or any custom port like 20000 for security)
    - **End Port (External)**: `8123` (same as start)
    - **Destination Port**: `8123`
4.  **Save**: Apply the changes.

## External Access

### Option 1: Direct Access (HTTP) - **INSECURE**
You can now access via `http://<YOUR_EXTERNAL_IP>:8123`.
> [!WARNING]
> This is unencrypted. Passwords are sent in plain text. Do NOT use this for long-term use.

### Option 2: DuckDNS + Let's Encrypt (Free & Secure)
1.  Create a domain at [duckdns.org](https://www.duckdns.org/).
2.  Since you are running Docker, you can add a DuckDNS container to keep your IP updated.
3.  Configure Home Assistant `configuration.yaml` to use the SSL certificates generated.

### Option 3: VPN (Most Secure)
Use the VPN server built into your Freebox (WireGuard or OpenVPN).
1.  Enable VPN Server in Freebox settings.
2.  Connect your phone to the VPN.
3.  Access via local IP `http://192.168.1.141:8123`.
