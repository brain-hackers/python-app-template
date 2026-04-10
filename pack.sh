#!/bin/bash

APP_NAME="Hello World"

TARGET_DIR="./${APP_NAME}"
PYTHON_DIR="${TARGET_DIR}/python"
CACHE_DIR="./cache"

PYAPPLAUNCHER_VER="0.2.0"
PYTHON_VER="3.10.10+ce1"
LAUNCHER_URL="https://github.com/brain-hackers/PyAppLauncher/releases/download/${PYAPPLAUNCHER_VER}/pyapplauncher-${PYAPPLAUNCHER_VER}.zip"
PYTHON_URL="https://github.com/brain-hackers/cpython-wince/releases/download/${PYTHON_VER}/python-wince-${PYTHON_VER}.zip"
EXEOPENER_URL="https://github.com/brain-hackers/buildbrain/raw/refs/heads/master/image/exeopener.exe.gz"

LAUNCHER_ZIP="${CACHE_DIR}/pyapplauncher-0.2.0.zip"
PYTHON_ZIP="${CACHE_DIR}/python-wince-3.10.10+ce1.zip"
EXEOPENER_EXE_GZ="${CACHE_DIR}/exeopener.exe.gz"

# Create necessary directories
mkdir -p "${CACHE_DIR}"

# Download and extract PyAppLauncher if not in cache
if [ ! -f "${LAUNCHER_ZIP}" ]; then
    curl -L "${LAUNCHER_URL}" -o "${LAUNCHER_ZIP}"
fi
unzip -o "${LAUNCHER_ZIP}" -d "${CACHE_DIR}"
mv "${CACHE_DIR}/PyAppLauncher/AppMain.exe" "${CACHE_DIR}/PyAppLauncher/AppMain_.exe"
mv "${CACHE_DIR}/PyAppLauncher" "${APP_NAME}"

# Download and extract CPython-WinCE if not in cache
if [ ! -f "${PYTHON_ZIP}" ]; then
    curl -L "${PYTHON_URL}" -o "${PYTHON_ZIP}"
fi
unzip -o "${PYTHON_ZIP}" -d "${CACHE_DIR}"
mv "${CACHE_DIR}/python-wince-${PYTHON_VER}" "${PYTHON_DIR}"

# Download and extract exeopener if not in cache
if [ ! -f "${EXEOPENER_ZIP}" ]; then
    curl -L "${EXEOPENER_URL}" -o "${EXEOPENER_EXE_GZ}"
fi
gzip -dc ${EXEOPENER_EXE_GZ} > "${TARGET_DIR}/AppMain.exe"

# Copy the configuration file
cp config.ini "${TARGET_DIR}/"

# Copy the app module
cp -r ./app "${TARGET_DIR}/"
