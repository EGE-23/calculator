// Hesap Makinesi
actor hesap_makinesi {
    // Değişken tanımı
    var hucre: Int = 0;

    // Toplama Fonksiyonu
    public func toplama(s: Int): async Int {
        hucre += s;
        hucre;
    };

    // Çıkarma Fonksiyonu
    public func cikarma(s: Int): async Int {
        hucre -= s;
        hucre;
    };

    // Çarpma Fonksiyonu
    public func carpma(s: Int): async Int {
        hucre *= s;
        hucre;
    };

    // Bölme Fonksiyonu (Hata Kontrolü Dahil)
    public func bolme(s: Int): async ?Int {
        if (s == 0) {
            return null; // Hata durumunda null döndürülür
        } else {
            hucre /= s;
            return ?hucre; // Sonuç döndürülür
        };
    };

    // Temizleme Fonksiyonu (Hücreyi Sıfırlar)
    public func temizle(): async () {
        hucre := 0;
    };
};

