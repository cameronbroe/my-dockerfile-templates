FROM mcr.microsoft.com/dotnet/sdk:9.0.303 AS build
WORKDIR /project

COPY *.csproj .
RUN dotnet restore

COPY . .
RUN dotnet publish -c release -o /app --no-restore

FROM mcr.microsoft.com/dotnet/runtime:8.0.6
WORKDIR /app
COPY --from=build /app .
CMD ["dotnet", "app.dll"]