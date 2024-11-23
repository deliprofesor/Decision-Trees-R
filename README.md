# Decision-Trees-R

![diabetes](https://github.com/user-attachments/assets/8902ebd9-7b43-49c2-b2fb-b50f5207859f)

This repository contains code for building and evaluating models using Decision Trees, specifically focusing on the CART (Classification and Regression Trees) algorithm, using the R programming language. Decision Trees are powerful machine learning algorithms used for classification and regression tasks. CART is a specific type of Decision Tree algorithm that uses binary splits to construct the tree.

This code involves a study using Decision Trees and Random Forest models in the R programming language. The "diabetes.csv" dataset is used, and various modeling and evaluation steps are performed on this dataset.

1) Loading the required packages
2) Loading and examining the dataset
3) Checking for missing values
4) Analyzing the distribution of the target variable
5) Preparing the training and test datasets
6) Creating and evaluating Decision Tree models
7) Building and evaluating the Random Forest model
8) Tuning and evaluating model hyperparameters
The purpose of this code is to try different machine learning models to predict the diabetes status in the dataset and select the model that performs best.
Decision Trees are fundamental algorithms used in data mining and machine learning for classification and regression tasks. These trees learn relationships between features and target variables in a dataset, creating a tree structure that represents decisions and relationships between each feature and the target variable. This tree structure is typically built using yes/no questions, expressing decisions in a tree-like format.

When used for classification tasks, Decision Trees assign an example to a class based on the features in the dataset. They can also be used for regression tasks, where the target variable takes continuous values, and the tree structure represents relationships and decisions among these values.

Decision Trees are transparent models, meaning they are easy to understand and interpret. They can also model complex relationships in datasets. However, they are prone to overfitting, so appropriate hyperparameter tuning and model optimization techniques are essential for improving their performance.
CART (Classification and Regression Trees) is a decision tree algorithm used for classification and regression tasks. This algorithm learns the relationships between features and target variables in a dataset to create a decision tree. In classification tasks, it is used to assign an example to a specific class, while in regression tasks, it is used to predict a continuous target variable. The CART algorithm visualizes decisions and relationships in the dataset with a tree structure representing yes/no questions.


Bu kod, R programlama dili kullanılarak Karar Ağaçları (Decision Trees) ve Rastgele Orman (Random Forest) modelleriyle ilgili bir çalışmayı içeriyor. Veri seti olarak "diabetes.csv" dosyası kullanılmış ve bu veri seti üzerinde çeşitli modelleme ve değerlendirme adımları gerçekleştirilmiş.

1) Gerekli paketlerin yüklenmesi
2) Veri setinin yüklenmesi ve incelenmesi
3) Eksik değerlerin kontrol edilmesi
4) Hedef değişkenin dağılımının incelenmesi
5) Eğitim ve test veri setlerinin hazırlanması
6) Karar Ağacı (Decision Tree) modellerinin oluşturulması ve değerlendirilmesi
7) Rastgele Orman (Random Forest) modelinin oluşturulması ve değerlendirilmesi
8) Model hiperparametrelerinin ayarlanması ve değerlendirilmesi adımlarını içerir.
Bu kodların amacı, veri setindeki diyabet durumunu tahmin etmek için farklı makine öğrenimi modellerini denemek ve en iyi performansı gösteren modeli seçmektir.
Bu depo, R programlama dili kullanılarak Karar Ağaçları (Decision Trees) ve özellikle de CART (Classification and Regression Trees) algoritmasıyla model oluşturma ve değerlendirme kodlarını içerir. Karar Ağaçları, sınıflandırma ve regresyon görevlerinde kullanılan güçlü makine öğrenimi algoritmalarıdır. CART ise özel bir Karar Ağacı algoritmasıdır ve ağacı oluşturmak için ikili bölümler kullanır.

Karar ağaçları (Decision Trees)
Veri madenciliği ve makine öğrenimi alanlarında sınıflandırma ve regresyon görevleri için kullanılan temel bir algoritmadır. Karar ağaçları, bir veri setindeki özellikler ve hedef değişkenler arasındaki ilişkileri öğrenerek bir ağaç yapısı oluştururlar. Bu ağaç yapısı, veri setindeki her bir özellik ve hedef değişken arasındaki kararları ve ilişkileri gösterir. Genellikle evet/hayır soruları şeklinde ifade edilen kararlarla bu ağaç yapısı inşa edilir.

Karar ağaçları, sınıflandırma problemleri için kullanıldığında veri setindeki özelliklerden yola çıkarak bir örneği bir sınıfa atama görevini yerine getirirler. Karar ağaçları ayrıca regresyon problemleri için de kullanılabilir. Bu durumda, hedef değişken sürekli bir değer alır ve ağaç yapısı bu değerler arasındaki ilişkileri ve kararları gösterir.

Karar ağaçları, anlaşılması kolay ve yorumlanması açısından şeffaf olan modellerdir. Aynı zamanda, veri setlerindeki karmaşık ilişkileri de modelleyebilirler. Ancak, aşırı uyum (overfitting) sorunu yaşama eğilimindedirler, bu nedenle uygun hiperparametre ayarlamaları ve model optimizasyon teknikleri kullanılarak performanslarının iyileştirilmesi önemlidir.

CART, sınıflandırma ve regresyon görevleri için kullanılan bir karar ağacı algoritmasıdır. Bu algoritma, veri setindeki özelliklerin ve hedef değişkenlerin ilişkilerini öğrenerek bir karar ağacı oluşturur. Sınıflandırma görevlerinde, bir örneği belirli bir sınıfa atamak için kullanılırken, regresyon görevlerinde ise sürekli bir hedef değişkeni tahmin etmek için kullanılır. CART algoritması, veri setindeki kararları ve ilişkileri evet/hayır soruları şeklinde temsil eden bir ağaç yapısıyla görselleştirir

