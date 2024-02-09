FROM mcr.microsoft.com/dotnet/sdk:8.0

# Install Node.js LTS
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - \
  && apt-get install -y nodejs \
  && echo 'node version:' $(node -v) \
  && echo 'npm version:' $(npm -v) \
  && echo 'dotnet version:' $(dotnet --version)
