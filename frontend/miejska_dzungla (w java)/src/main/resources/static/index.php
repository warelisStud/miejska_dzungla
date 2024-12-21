<?php
// Konfiguracja bazy danych
$host = 'localhost';
$dbname = 'sklep';
$username = 'root';
$password = '';

try {
    // Połączenie z bazą danych
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Zapytanie SQL pobierające trzy najczęściej sprzedawane produkty
    $query = "
        SELECT 
            p.product_id,
            p.name,
            p.price,
            p.image,
            SUM(op.quantity) AS total_sold
        FROM 
            Product p
        JOIN 
            Order_product op ON p.product_id = op.product_id
        GROUP BY 
            p.product_id
        ORDER BY 
            total_sold DESC
        LIMIT 3
    ";

    $stmt = $pdo->prepare($query);
    $stmt->execute();

    // Pobranie wyników
    $bestSellers = $stmt->fetchAll(PDO::FETCH_ASSOC);

} catch (PDOException $e) {
    echo "Błąd połączenia z bazą danych: " . $e->getMessage();
    exit;
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Miejska dżungla</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <!-- Nagłówek -->
    <header>
        <img src="/images/banner2.jpg" alt="banner">
        <nav>
            <ul>
                <li><a href="index.php" class="active">Home</a></li>
                <li><a href="products.html">Produkty</a></li>
                <li><a href="advices.html">Porady</a></li>
                <li><a href="account.html">Konto</a></li>
            </ul>
        </nav>
    </header>

    <!-- Sekcja główna -->
    <main>
        <h2>Najlepsze rośliny do Twojego domu!</h2>
        <h3>Best sellers 2024</h3>
        <section class="products">
            <?php foreach ($bestSellers as $product): ?>
                <div class="product">
                    <!-- Wyświetlenie obrazka jako Base64 -->
                    <img src="data:image/jpeg;base64,<?= base64_encode($product['image']) ?>" alt="<?= htmlspecialchars($product['name']) ?>" class="image-placeholder">
                    <h4><?= htmlspecialchars($product['name']) ?></h4>
                    <p>Cena: <?= htmlspecialchars(number_format($product['price'], 2)) ?> zł</p>
                    <button>Kup teraz</button>
                </div>
            <?php endforeach; ?>
        </section>
    </main>

    <!-- Sekcja linków -->
    <footer>
        <nav>
            <ul>
                <li><a href="policy.html">Polityka prywatności</a></li>
                <li><a href="terms.html">Regulamin</a></li>
                <li><a href="contact.html">Kontakt</a></li>
            </ul>
        </nav>
    </footer>
</body>
</html>
