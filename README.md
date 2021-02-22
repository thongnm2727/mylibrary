
## Tổng quan
Project giả lập một trang web quản lý dành cho thư viện như một cổng thông tin cung cấp các tính năng cho phép người dùng tra cứu các thông tin về thư viện, cũng như
quản lý thông tin về thư viện tùy theo đối tượng. Đối tượng người dùng chính của trang web bao gồm Guest và Admin, Guest là những người muốn tra cứu thông tin về
thư viện trước khi tới mượn sách. Admin ngoài được cấp những quyền như Guest còn có thể quản lý, cập nhật sách, quản lý thông tin về lượt mượn sách tại thư viện, ...

    Framework sử dụng

- Backend: Laravel
- Frontend: VueJS, Gull - Laravel + Bootstrap 4 admin template

## Thông tin mà thư viện cung cấp:

- Thông tin chung về thư viện
- Phí thành viên (phí đăng ký để trở thành thành viên của thư viện, thành viên là người có thể mượn sách tại thư viện)
- Thông tin liên hệ
- Giờ mở cửa
- Danh sách các đầu sách hiện có tại thư viện, các cuốn sách thuộc về đầu sách đó và tình trạng sẵn có của các cuốn sách này 

## Quyền sử dụng của Guest và Admin:

- Guest: Tra cứu thông tin thư viện, tra cứu thông tin sách
- Admin: Có đầy đủ quyền sử dụng như Guest, ngoài ra có thể quản lý những lượt mượn sách tại thư viện, cũng như thêm, sửa, xóa các đầu sách hiện có tại thư viện.

## Đối tượng & quan hệ giữa các đối tượng

- Book (đầu sách): những đầu sách có trong thư viện. ( Đắc Nhân Tâm, Bố Già, ...)
- Book Copy (sách): các cuốn sách thuộc về một đầu sách nào đó. Ví dụ: Trong thư viện có đầu sách (book) Đắc Nhân Tâm, đầu sách này hiện đang có
3 cuốn ( 3 book copies), trong đó 1 cuốn sẵn có (Available) và 2 cuốn hiện đang có người mượn (Unavailable)
- Book Request (lượt mượn sách): bao gồm thông tin về cuốn sách được mượn (book copy), ngày mượn, ngày trả, tình trạng: Đang mượn (Unreturned), Đã trả (Returned), Quá hạn (Overdue)
- Admin: Có quyền Login với account được cấp sẵn, sau khi đăng nhập có thể xem và quản lý thông tin về Book Request, cũng như cập nhật, quản lý danh sách đầu sách (Book) hiện có tại thư viện

## Giao diện
![Link Google Drive](https://drive.google.com/drive/folders/1VAfKRQJx4YjY0wfIH0NF_TLwpoRLQRCJ?usp=sharing)
- Book List
![image](https://drive.google.com/uc?export=view&id=1okfpp3bIm6bPbJHgvYwN0lPIPjYA1cIX)
- Book Detail
![image](https://drive.google.com/uc?export=view&id=1Ll_1Ncu8MfuPrsNeb3wcLUqFv8xluvJJ)
- Book Requests
![image](https://drive.google.com/uc?export=view&id=1oUPi8n_YOlvH4pnDYBFGUpsn37_4PDp0)
- Login
![image](https://drive.google.com/uc?export=view&id=1m9EKz1shAwf6RoKsOKg8k7Vm9xhdDQDp)
## Hướng dẫn cài đặt





