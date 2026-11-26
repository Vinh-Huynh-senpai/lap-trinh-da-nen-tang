# Trek Bikes

Ứng dụng bán xe đạp gồm Flutter, ASP.NET Core Web API và SQL Server.

- `trek_bikes_app/`: ứng dụng Flutter.
- `WebApi/`: ASP.NET Core Web API (.NET 8).
- `TrekBikes.sql`: script tạo database và dữ liệu mẫu.

## Chạy Web API

1. Chạy `TrekBikes.sql` trên SQL Server để tạo database.
2. Sao chép `WebApi/appsettings.example.json` thành `WebApi/appsettings.json`.
3. Cập nhật chuỗi kết nối và đặt `Jwt:SecretKey` thành khóa ngẫu nhiên riêng, tối thiểu 32 ký tự.
4. Chạy:

```powershell
cd WebApi
dotnet restore
dotnet run --launch-profile http
```

API mặc định chạy tại `http://localhost:5283`.

## Chạy Flutter

Sao chép `trek_bikes_app/.env.example` thành `trek_bikes_app/.env`, sau đó chỉnh `API_URL` theo địa chỉ API. Trên Android Emulator, dùng `http://10.0.2.2:5283`; trên thiết bị thật, dùng IP LAN của máy chạy API.

```powershell
cd trek_bikes_app
flutter pub get
flutter run
```

Cấu hình cục bộ (`.env`, `WebApi/appsettings.json`) và file build được loại khỏi Git.
