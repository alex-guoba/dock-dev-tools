docker run -d \
    --name=sso-server \
    -e CLIENT_NAME="SSO Service" \
    -e CLIENT_ID="E4448DAC-E430-4F7E-8761-10A98EA54FF8" \
    -e CLIENT_SECRET="ADD297D6-3EB2-4311-B37E-6D9084E13D74" \
    -e USER_PASS="password1234" \
    -p 3000:80 \
    soulteary/sso-server:latest

# client_id: `uuidgen` 
