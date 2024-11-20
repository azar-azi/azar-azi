create table tbl_user
(
Id int identity(1,1),
Name varchar(50),
gmail varchar(50),
Password varchar(50),
Conform_password varchar(50),
phone_number varchar(12)
)

create procedure sp_newuser
( 
        @Name  varchar(50),
        @gmail varchar(50),
		@Password varchar(50),
		@Conform_password varchar(50),
		@phone_number varchar(12)
)
as begin
insert into tbl_user
   (Name ,gmail,Password,Conform_password,phone_number)
   values ( @Name,@gmail,@Password,@Conform_password,@phone_number)
end


select * from tbl_user

create procedure sp_login
(
		@gmail varchar(50),
		@pwd varchar(50)
)
as begin
   select count(1) from tbl_user
    where gmail=@gmail and password=@pwd
end
 select * from tbl_user



 /********************************************************************/
drop table crud

 CREATE TABLE Crud
 (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50),
    Age INT
);

CREATE procedure sp_InsertData
    @Name NVARCHAR(50),
    @Age INT
AS
BEGIN
    INSERT INTO Crud (Name, Age)
    VALUES (@Name, @Age);
END;

CREATE PROCEDURE sp_UpdateData
    @ID INT,
    @Name NVARCHAR(50),
    @Age INT
AS
BEGIN
    UPDATE Crud
    SET Name = @Name,
        Age = @Age
    WHERE ID = @ID;
END;

CREATE PROCEDURE sp_DeleteData
    @ID INT
AS
BEGIN
    DELETE FROM Crud
    WHERE ID = @ID;
END;

--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!--

drop table tbl_custom
create table tbl_custom
(
   ID INT PRIMARY KEY IDENTITY(1,1),
   customer_id int,
   customer_name varchar(50),
   gmail varchar(50),
   mobile_num varchar(20)

);
 drop PROCEDURE sp_deletecus
CREATE PROCEDURE sp_insertcus
    @customer_id int,
    @customer_name varchar(50),
    @gmail varchar(50),
    @mobile_num varchar(20)
AS
BEGIN
    INSERT INTO tbl_custom (customer_id, customer_name, gmail, mobile_num)
    VALUES (@customer_id, @customer_name, @gmail, @mobile_num);
END;

CREATE PROCEDURE sp_updatecus
    @customer_id int,
    @new_customer_name VARCHAR(50),
    @new_gmail VARCHAR(50),
    @new_mobile_num varchar(20)
AS
BEGIN
    UPDATE tbl_custom
    SET customer_name = @new_customer_name, 
        gmail = @new_gmail, 
        mobile_num = @new_mobile_num
    WHERE customer_id = @customer_id;
END;


CREATE PROCEDURE sp_deletecus
    @customer_id int
AS
BEGIN
    DELETE FROM tbl_custom
    WHERE customer_id = @customer_id;
END;

CREATE PROCEDURE sp_fetchcus
AS
BEGIN
    SELECT * FROM tbl_custom;
END;

----***********************************************************------
drop table tbl_category


CREATE TABLE tbl_cat (
    id INT PRIMARY KEY IDENTITY,
	Category_id INT,
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(255) NOT NULL
);

CREATE PROCEDURE sp_insert_cat
    @Category_id INT,
    @Name VARCHAR(100),
    @Description VARCHAR(255)
AS
BEGIN
    INSERT INTO tbl_cat (Category_id, Name, Description)
    VALUES (@Category_id, @Name, @Description);
END;


CREATE PROCEDURE sp_update_cat
    @Category_id INT,
    @Name VARCHAR(100),
    @Description VARCHAR(255)
AS
BEGIN
    UPDATE tbl_cat
    SET Name = @Name,
        Description = @Description
    WHERE Category_id = @Category_id;
END;

CREATE PROCEDURE sp_delete_cat
    @Category_id INT
AS
BEGIN
    DELETE FROM tbl_cat
    WHERE Category_id = @Category_id;
END;

CREATE PROCEDURE sp_fetch_cat
AS
BEGIN
    SELECT Category_id, Name, Description
    FROM tbl_cat;
END;


--####################################################################-----

CREATE TABLE tbl_product (
        ID INT PRIMARY KEY IDENTITY(1,1),
        Product_Id INT,
        Product_Name VARCHAR(100),
        Product_Type VARCHAR(50),
        Product_Price DECIMAL(10, 2)
);

drop procedure DeleteProduct

CREATE PROCEDURE sp_insertproduct
    @Product_Id INT,
    @Product_Name VARCHAR(100),
    @Product_Type VARCHAR(50),
    @Product_Price DECIMAL(10, 2)
AS
BEGIN
    INSERT INTO tbl_product  (Product_Id, Product_Name, Product_Type, Product_Price)
    VALUES (@Product_Id, @Product_Name, @Product_Type, @Product_Price)
END


CREATE PROCEDURE sp_updateproduct
    @Product_Id INT,
    @Product_Name VARCHAR(100),
    @Product_Type VARCHAR(50),
    @Product_Price DECIMAL(10, 2)
AS
BEGIN
    UPDATE tbl_product
    SET Product_Name = @Product_Name,
        Product_Type = @Product_Type,
        Product_Price = @Product_Price
    WHERE Product_Id = @Product_Id
END


CREATE PROCEDURE sp_deleteproduct
    @Product_Id INT
AS
BEGIN
    DELETE FROM tbl_product
    WHERE Product_Id = @Product_Id
END


CREATE PROCEDURE sp_fetchproduct
AS
BEGIN
    SELECT Product_Id, Product_Name, Product_Type, Product_Price
    FROM tbl_product
END

