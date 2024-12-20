<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Miejska dżungla</title>
    <link rel="stylesheet" href="style/style.css">
    <link rel="icon" type="image/x-icon" href="other_photos/favicon.ico">
</head>
<body>
    <!-- Nagłówek i pasek nawigacyjny -->
    <header>
        <h1 class="logo">Miejska dżungla</h1>
        <div class="search-bar">
            <input type="text" placeholder="Szukaj roślin...">
            <button>Szukaj</button>
        </div>
        <nav>
            <ul>
            <li><a id="link" href="index.php" class="active">Home</a></li>
            <li><a id="link" href="products.php">Produkty</a></li>
            <li><a id="link" href="advices.php">Porady</a></li>
            <li><a id="link" href="account.php">Konto</a></li>
            </ul>
        </nav>
    </header>

    <!-- Sekcja główna -->
    <main>
        <h2>Najlepsze rośliny do Twojego domu!</h2>
        <h3>Best sellers 2024</h3>
        <section class="products">
            <div class="product">
                <div class="image-placeholder">200 x 200</div>
                <h4>Fikus</h4>
                <p>Cena: 49.99 zł</p>
                <button>Kup teraz</button>
            </div>
            <div class="product">
                <div class="image-placeholder">200 x 200</div>
                <h4>Monstera</h4>
                <p>Cena: 79.99 zł</p>
                <button>Kup teraz</button>
            </div>
            <div class="product">
                <div class="image-placeholder">200 x 200</div>
                <h4>Kaktus</h4>
                <p>Cena: 29.99 zł</p>
                <button>Kup teraz</button>
            </div>
        </section>
    </main>

    <!-- Sekcja linków -->
    <footer>
        <nav>
        <ul>
            <li><a id="link" href="policy.php">Polityka prywatności</a></li>
            <li><a id="link" href="terms.php">Regulamin</a></li>
            <li><a id="link" href="contact.php">Kontakt</a></li>
        </ul>
        </nav>
    </footer>
</body>
</html>