#!/bin/bash

# ビルドディレクトリとターゲットディレクトリの設定
BUILD_DIR="./result"
TARGET_DIR="./firmware/nix"

# ターゲットディレクトリが存在しない場合は作成
mkdir -p "$TARGET_DIR"

# ディレクトリのパーミッションを設定
sudo chown -R $USER:$USER "$TARGET_DIR"
sudo chmod 755 "$TARGET_DIR"

# Nixビルドを実行
echo "Building firmware..."
nix build

# ファームウェアファイルをコピー
echo "Copying firmware files..."
if [ -d "$BUILD_DIR" ]; then
    cp -L "$BUILD_DIR/firmware/"* "$TARGET_DIR/"
    echo "Firmware files copied successfully to $TARGET_DIR"
else
    echo "Error: Firmware build directory not found"
    exit 1
fi

# パーミッションの確認
ls -l "$TARGET_DIR"

