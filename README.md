# Diyabet Tahmini İçin Karar Ağaçları ve Rastgele Orman Algoritmalarının Uygulanması ve Performans Karşılaştırması

![diabetes](https://github.com/user-attachments/assets/8902ebd9-7b43-49c2-b2fb-b50f5207859f)

Bu proje, bir diyabet tahmin sistemi geliştirmek için kullanılıyor. Veri seti, çeşitli bireysel özellikler (örneğin, glikoz seviyesi, kan basıncı) ve diyabet sonucu (Outcome: diyabet var mı, yok mu?) içermektedir.

Amaç:
Bağımsız değişkenler (özellikler) kullanılarak diyabet varlığını (Outcome) tahmin etmek.
Farklı algoritmaların performansını karşılaştırarak en iyi modeli belirlemek.
Modeli optimize ederek doğruluğu artırmak.
# Kullanılan Algoritmalar

Karar Ağaçları (Decision Trees):

Basit ve görselleştirilebilir bir modelleme yöntemi.
Entropy (bilgi kazancı) ve Gini (saflık indeksi) tabanlı iki farklı dallanma stratejisi kullanıldı.
Rastgele Orman (Random Forest):

Karar ağaçlarının topluluğundan oluşan daha güçlü bir algoritma.
Birden fazla ağaç kullanılarak modelin genelleştirme kapasitesi artırılır.
Hiperparametre Optimizasyonu:

Modellerin performansını artırmak için çapraz doğrulama ve rastgele/grid arama yöntemleri kullanıldı.
# Analiz Süreci ve Sonuçlar

# 1. Veri Kontrolü

Eksik değer bulunmadığı doğrulandı (mice::md.pattern()).
Sınıf Dengesizliği:
"Diyabet yok" (0) sınıfı, "Diyabet var" (1) sınıfından daha fazla gözlem içeriyor. Bu durum, sınıf dengesizliği problemini gündeme getiriyor ve modellerin bu dengesizliği doğru ele alması gerekiyor.

# 2. Karar Ağaçları ile Modelleme

Entropy ve Gini yöntemleriyle iki ayrı model oluşturuldu.
Model performansı, test veri seti üzerinde değerlendirildi.
Sonuçlar:
Entropy tabanlı model: Daha doğru sınıflandırma sağladı.
Hiperparametrelerle optimize edilen model, daha az derinlikte (maxdepth=5) olmasına rağmen performansını korudu.

# 3. Rastgele Orman ile Modelleme

Rastgele orman, karar ağaçlarına kıyasla daha güçlü bir model oluşturdu.
Özellikle "minority class" olan diyabet var sınıfını daha iyi tahmin etti.
Hiperparametre Optimizasyonu:
ntree, mtry gibi parametrelerin optimize edilmesiyle, test setindeki doğruluk ve genel performans artırıldı.
Performans Değerlendirmesi
Model performansları, doğruluk (accuracy), duyarlılık (sensitivity), özgüllük (specificity), F1 skoru gibi metriklerle ölçüldü.
This repository contains code for building and evaluating models using Decision Trees, specifically focusing on the CART (Classification and Regression Trees) algorithm, using the R programming language. 
Decision Trees are powerful machine learning algorithms used for classification and regression tasks. CART is a specific type of Decision Tree algorithm that uses binary splits to construct the tree.

This code involves a study using Decision Trees and Random Forest models in the R programming language. The "diabetes.csv" dataset is used, and various modeling and evaluation steps are performed on this dataset.

![tablo](https://github.com/user-attachments/assets/549783c1-bf4d-4805-ad6e-f4bd8df6b230)

Rastgele orman modelleri, tüm metriklerde daha iyi performans gösterdi.
Optimize edilmiş rastgele orman modeli, en iyi sonuçları verdi.

# Sonuç ve Çıkarımlar

Rastgele Orman (Random Forest), bu veri setinde en iyi modelleme yöntemi olarak öne çıktı.
Entropy tabanlı karar ağacı modelleri de makul performans sağladı, ancak rastgele ormanın genelleştirme gücü üstün geldi.
Hiperparametre optimizasyonu, tüm modellerde performansı artırdı.
Veri setindeki sınıf dengesizliği, rastgele orman ve çapraz doğrulama yöntemleriyle başarılı bir şekilde ele alındı.


