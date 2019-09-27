# Docker-ELKonLaravel
E.L.K. example for PHP laravel via docker.

## 如何使用

1. 安裝 Docker

    [官方安裝文件](https://docs.docker.com/install/)

2. 產生 環境變數
    ```bash
        $ cp .env.example .env
    ```

3. 啟動
    ```bash
        $ make dev
    ```

3. 安裝 PHP 相關套件
    ```bash
        $ make install
    ```

4. 等待 E.L.K. 相關環境執行完畢 (約 1 ~ 5 分鐘)

5. 進入 Kibana 查看網站是否正常執行 <br>
`http://127.0.0.1:{KB_PORT}/`

    KB_PORT 預設值: 5601

6. `Management` 分頁 找到 Kibana `Index Patterns` 連結

![image](https://github.com/andykuen/Docker-ELKonLaravel/blob/master/assets/images/kibana_01.png)

7. 設定 E.L.K. index 資訊

![image](https://github.com/andykuen/Docker-ELKonLaravel/blob/master/assets/images/kibana_02.png)

![image](https://github.com/andykuen/Docker-ELKonLaravel/blob/master/assets/images/kibana_03.png)

8. `Discover` 分頁 即可看到相關資訊。

![image](https://github.com/andykuen/Docker-ELKonLaravel/blob/master/assets/images/kibana_04.png)

## 新增一筆資料

### URL
[`POST`] `http://127.0.0.1:{APP_PORT}/api/log`

### POST BODY
```JSON
{
    msg: '你想要的內容',
}
```
