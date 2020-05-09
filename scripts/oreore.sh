#!/bin/bash

source /scripts/lib/file.sh
source /scripts/lib/array.sh
source /scripts/lib/message.sh

source /scripts/conf/oreore.conf

# Delete the last created Self-signed Certificate.
# 前回作成されたオレオレ証明書(自己署名証明書)の削除。
msg_info "Delete: last created"
for filename in *; do
  if ! contains "$filename" "${excludes[@]}"; then
    msg_default "Delete: $filename"
    delete "$filename"
  fi
done

# Create Self-signed Certificate.
# オレオレ証明書(自己署名証明書)の作成。
msg_info "Create: server.key"
openssl genrsa 2048 > server.key
msg_info "Create: server.csr"
openssl req -new -key server.key > server.csr
msg_info "Create: server.crt"
openssl x509 -days 3650 -req -signkey server.key < server.csr > server.crt

# Complete.
# 完了。
msg_success "Complete!"
