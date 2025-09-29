FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

# Install Java, tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       openjdk-17-jdk \
       curl \
       unzip \
       xz-utils \
       git \
       ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Android SDK
ENV ANDROID_SDK_ROOT=/opt/android-sdk
ENV ANDROID_HOME=/opt/android-sdk
ENV PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$ANDROID_SDK_ROOT/platform-tools

RUN mkdir -p $ANDROID_SDK_ROOT/cmdline-tools \
    && curl -fsSL https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip -o /tmp/clt.zip \
    && unzip -q /tmp/clt.zip -d $ANDROID_SDK_ROOT/cmdline-tools \
    && mv $ANDROID_SDK_ROOT/cmdline-tools/cmdline-tools $ANDROID_SDK_ROOT/cmdline-tools/latest \
    && rm /tmp/clt.zip

# Accept licenses and install required packages (Android 33 example)
RUN yes | $ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager --licenses
RUN $ANDROID_SDK_ROOT/cmdline-tools/latest/bin/sdkmanager "platform-tools" "build-tools;33.0.2" "platforms;android-33"

# Flutter SDK
ENV FLUTTER_HOME=/opt/flutter
RUN curl -fsSL https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.3-stable.tar.xz \
    | tar -xJ -C /opt
ENV PATH=$PATH:$FLUTTER_HOME/bin

# Taskツールのインストール
RUN curl -sL https://taskfile.dev/install.sh | sh -s -- -b /usr/local/bin

# Precache and verify (stabilize Flutter SDK state)
RUN git config --global --add safe.directory /opt/flutter \
    && if [ -d /opt/flutter/.git ]; then git -C /opt/flutter remote set-url origin https://github.com/flutter/flutter.git; fi \
    && flutter config --no-analytics \
    && flutter channel stable \
    && flutter upgrade \
    && flutter precache \
    && flutter doctor -v
