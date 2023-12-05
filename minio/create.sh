docker run -d \
    --name minio \
    --restart=always \
    -p 9000:9000 \
    -p 9001:9001 \
    -e MINIO_ROOT_USER="85e61f911bcda601" \
    -e MINIO_ROOT_PASSWORD="15830a50ee670f914c76525592f90bbce1d61b2cd56318284f0bfde4311778a1" \
    -e MINIO_REGION_NAME="uto-1" \
    -e MINIO_BROWSER="on" \
    -e MINIO_SERVER_URL="http://localhost:9000/" \
    -e MINIO_BROWSER_REDIRECT_URL="http://localhost:9001/" \
    --volume minio:/data \
    minio/minio:latest server /data --console-address ":9001"

# MINIO_ROOT_USER: `openssl rand -hex 8`
# MINIO_ROOT_PASSWORD: `openssl rand -hex 32`
