cat <<EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Witaj z Openshifta!</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            font-family: "Arial", sans-serif;
        }
        .container {
            text-align: center;
            background: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333;
            font-size: 2.5em;
            margin: 0;
        }
        p {
            color: #666;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Witaj z Kubernetesa!</h1>
        <p>Jezeli ten plik umiescisz w persistentStorage, pozostanie na k8s mimo usuniecia poda</p>
    </div>
</body>
</html>
EOF
