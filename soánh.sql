/*
InnoDB
Hỗ trợ giao dịch (ACID): InnoDB tuân thủ ACID, cho phép rollback, commit, đảm bảo dữ liệu không bị mất khi có lỗi hệ thống.
Cơ chế khóa: Sử dụng khóa dòng (row-level locking), giúp xử lý nhiều truy vấn đồng thời mà không bị chặn toàn bộ bảng.
Hiệu suất: Tốt trong môi trường có nhiều thao tác đọc/ghi đồng thời, phù hợp với các hệ thống phức tạp.
Toàn vẹn dữ liệu: Hỗ trợ khóa ngoại (FOREIGN KEY), đảm bảo tính ràng buộc dữ liệu giữa các bảng.
Tốc độ xử lý: Chậm hơn MyISAM trong các truy vấn chỉ đọc, nhưng tối ưu hơn khi có nhiều thao tác ghi.
Hỗ trợ Full-text Search: Không hỗ trợ trước MySQL 5.6, nhưng có từ phiên bản MySQL 5.6 trở đi.
Tính nhất quán của dữ liệu: Bảo vệ dữ liệu tốt, có thể khôi phục dữ liệu khi hệ thống gặp sự cố.
Kích thước tệp: Lớn hơn MyISAM do lưu nhật ký giao dịch (transaction logs).
Ứng dụng phù hợp: Thích hợp cho hệ thống thương mại điện tử, tài chính, ngân hàng, nơi cần bảo đảm tính toàn vẹn dữ liệu.
*/

/*
MyISAM
Hỗ trợ giao dịch (ACID): Không hỗ trợ ACID, nếu có sự cố, dữ liệu có thể bị mất.
Cơ chế khóa: Sử dụng khóa bảng (table-level locking), mỗi thao tác ghi sẽ khóa toàn bộ bảng, gây chậm khi có nhiều truy vấn đồng thời.
Hiệu suất: Tốt hơn trong các truy vấn chỉ đọc, nhưng hiệu suất ghi kém do khóa bảng.
Toàn vẹn dữ liệu: Không hỗ trợ khóa ngoại, dễ mất dữ liệu nếu ứng dụng không kiểm soát tốt.
Tốc độ xử lý: Nhanh hơn InnoDB khi chỉ cần SELECT, nhưng chậm hơn khi có nhiều thao tác ghi.
Hỗ trợ Full-text Search: Hỗ trợ full-text search mặc định, phù hợp với hệ thống tìm kiếm văn bản lớn.
Tính nhất quán của dữ liệu: Dễ gặp lỗi dữ liệu nếu hệ thống bị tắt đột ngột hoặc gặp sự cố.
Kích thước tệp: Nhỏ hơn InnoDB vì không lưu nhật ký giao dịch.
Ứng dụng phù hợp: Thích hợp cho blog, website tin tức, hệ thống báo cáo, nơi truy vấn chủ yếu là đọc dữ liệu.

*/