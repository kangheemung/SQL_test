#この問題は、特定のレコードを更新するためのUPDATE文の正しい構文と使用方法を理解しているかを確認するものです。
-- 複数カラムの更新 記述方法1
UPDATE
  employees
SET
  age = 22,
  department_id = 2
WHERE
  id = 5
;

-- 複数カラムの更新 記述方法2
UPDATE
  employees
SET
  (age, department_id) = (22, 2)
WHERE
  id = 5
;


SELECT *
FROM users
WHERE age >= 18 AND age <30
AND name IS NOT NULL;
#nameが「ki」で終わる
SELECT
*
FROM
users
WHERE
name LIKE '%ki'
;

#departmentsテーブルemployees テーブルに対して departments テーブルを内部結合してデータを取得するSQLとして適切なものを選択しなさい。

## employeesテーブル
SELECT
  employees.id AS ID,
  employees.name AS 名前,
  departments.name AS 部署
FROM
  employees
INNER JOIN departments
  ON employees.department_id = departments.id
;
#usersテーブルにserial型で定義された連番のリセットを行うSQLとして適切なものを選択しなさい。
TRUNCATE TABLE users RESTART IDENTITY;
#TRUNCATEコマンドは、テーブルの全データを削除し、オプションによってはIDENTITY（またはSERIAL）列をリセットすることができます。

#ALTER TABLE 対象のテーブル名 ADD COLUMN 追加するカラム名 データ型;
#SQLクエリを使用して特定の条件でデータを取得する方法を問うています。price カラムを降順でソートし、2番目に高い価格から3件のデータを取得するための正しいSQLコマンドを選択する必要があります。**#**products は商品情報を管理するテーブルで、price は各商品ごとの価格情報を格納するカラムである。**

#**price が二番目に高いデータから3件取得したい場合、①に入る記述として適切なものを選択しなさい。**
SELECT
*
FROM
products
ORDER BY
price DESC
OFFSET 1
LIMIT 3;