FROM mcr.microsoft.com/dotnet/sdk:7.0.202 AS build
WORKDIR /project

COPY *.csproj .
RUN dotnet restore

COPY . .
RUN dotnet publish -c release -o /app --no-restore

FROM mcr.microsoft.com/dotnet/runtime:7.0.4
WORKDIR /app
COPY --from=build /app .
CMD ["dotnet", "app.dll"]