FROM mcr.microsoft.com/dotnet/sdk:8.0.100-1 AS build
WORKDIR /project

COPY *.csproj .
RUN dotnet restore

COPY . .
RUN dotnet publish -c release -o /app --no-restore

FROM mcr.microsoft.com/dotnet/runtime:7.0.12
WORKDIR /app
COPY --from=build /app .
CMD ["dotnet", "app.dll"]