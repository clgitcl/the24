# STAGE 1: Build & Publish
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy csproj and restore dependencies (cached layer)
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out

# STAGE 2: Runtime
# We use the 'aspnet' runtime for the final image to keep it lightweight
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app/out .

# PORTABILITY: We use Environment Variables for connection strings
# These are overridden in Azure, Oracle, or Render
ENV REDIS_CONNECTION="localhost:6379"
ENV APP_PORT=8080

EXPOSE 8080

ENTRYPOINT ["dotnet", "The24.DataBridge.dll"]
