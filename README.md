# ⏱️ Hướng dẫn Sử dụng Phần mềm Quản lý Chấm Công

Chào mừng bạn đến với **Phần mềm Quản lý Chấm công (Bản Portable)**. Đây là phiên bản chạy trực tiếp, không cần cài đặt phức tạp.

---

## 1. Hướng dẫn Khởi động (QUAN TRỌNG: Dành cho LẦN ĐẦU TIÊN)

Để phần mềm có thể giao tiếp với máy chấm công, hệ điều hành Windows cần cấu hình đăng ký thư viện ở lần chạy đầu tiên.

1. **Giải nén** file ZIP phần mềm ra một thư mục cố định (Ví dụ: Desktop hoặc Ổ D).
2. Trong thư mục vừa giải nén, tìm và **nhấp đúp chuột** vào file **`CHAY_TOOL.bat`**.
3. Nếu Windows hiện bảng thông báo xin quyền (User Account Control), hãy bấm **Yes** (hoặc Run as administrator).
4. Màn hình sẽ chớp nhẹ và giao diện phần mềm tự động mở lên.

*💡 **Lưu ý:** Từ các lần sử dụng sau, bạn **KHÔNG CẦN** chạy file `.bat` nữa. Chỉ cần click đúp trực tiếp vào file **`mcc.exe`** để sử dụng bình thường. (Bạn có thể nhấp chuột phải vào `mcc.exe` -> `Send to` -> `Desktop (create shortcut)` để tạo biểu tượng truy cập nhanh ngoài màn hình).*

---

## 2. Hướng dẫn Sử dụng Giao diện

### ⚙️ BƯỚC 1: Cấu hình hệ thống (Khu vực 1)
* **IP Máy & Port:** Nhập địa chỉ IP của máy chấm công (Mặc định thường là `192.168.1.13`, Port `4370`).
* **URL Host:** Nhập đường dẫn nhận dữ liệu (API) của hệ thống phần mềm công ty.
* **Nút [💾 Lưu Cấu Hình]:** Bấm nút này để phần mềm ghi nhớ IP và URL cho các lần mở sau, bạn sẽ không cần nhập lại nữa.
* **Nút [Kiểm Tra Kết Nối]:** Kiểm tra xem máy tính đã kết nối thành công với máy chấm công chưa.

### 📅 BƯỚC 2: Chọn khoảng thời gian (Khu vực 2)
* Nhấp vào biểu tượng lịch để chọn **Từ ngày** và **Đến ngày**.
* *Lưu ý: Bộ lọc này chỉ áp dụng khi tải/gửi dữ liệu "Chấm Công".*

### 🚀 BƯỚC 3: Thao tác dữ liệu (Khu vực 3)
Phần mềm chia làm 2 cột chức năng rõ ràng:

**👤 Cột NHÂN VIÊN:**
* **[📥 Tải Excel]:** Tải toàn bộ danh sách nhân viên trên máy chấm công. Một cửa sổ sẽ hiện ra để bạn chọn nơi lưu file Excel.
* **[🚀 Gửi Lên Host]:** Gửi danh sách nhân viên thẳng lên hệ thống web/server.

**🕒 Cột CHẤM CÔNG:**
* **[📥 Tải Excel]:** Tải lịch sử quẹt vân tay/thẻ trong khoảng thời gian đã chọn. Cửa sổ chọn nơi lưu file sẽ hiện ra để bạn lưu báo cáo.
* **[🚀 Gửi Lên Host]:** Gửi dữ liệu chấm công trong khoảng thời gian đã chọn lên Server.

### 🛑 BƯỚC 4: Các nút Cứu hộ (Khu vực Hệ thống)
* **[🛑 DỪNG TIẾN TRÌNH]:** Nếu bạn lỡ chọn khoảng thời gian quá dài, hoặc mạng bị kẹt, hãy bấm nút này để ép phần mềm ngắt kết nối lập tức một cách an toàn mà không làm treo máy.
* **[🗑️ XÓA LOG]:** Dọn dẹp màn hình đen báo cáo bên dưới cho dễ nhìn.

---

## 3. Theo dõi tiến trình (Khu vực 4 - Log Hệ Thống)
Màn hình nền đen bên dưới sẽ ghi lại toàn bộ hoạt động của bạn theo thời gian thực:
* Chữ **màu xanh lá** hiển thị trạng thái hoạt động bình thường, báo cáo số lượng bản ghi tải/gửi thành công.
* Nếu có biểu tượng ⚠️ hoặc ❌, hãy đọc thông báo lỗi (VD: sai IP, rớt mạng, máy chủ từ chối...) để tự xử lý hoặc chụp màn hình báo cho kỹ thuật viên.

---
*Chúc bạn thao tác thành công và tiết kiệm thời gian với bộ công cụ này!*