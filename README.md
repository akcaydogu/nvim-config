
# Neovim Keymap ve Ayarları

Bu yapılandırma, Python dosyalarını çalıştırmak, buffer ve dosya yönetimini kolaylaştırmak, Telescope entegrasyonu ve terminal ile etkileşim gibi işlevleri kısa yollarla optimize eder.

---

## 🚀 Temel Ayarlar

- `termguicolors` etkinleştirildi (daha iyi renk desteği için)
- Girinti ayarları:
  - `expandtab`: Tab tuşu boşluk olarak kullanılır.
  - `tabstop`, `softtabstop`, `shiftwidth`: 4 boşluk

---

## 🎯 Lider Tuşu

- `<Leader>` tuşu olarak `Space` (`Boşluk`) atanmıştır.

---

## 🧪 Python Dosyasını Çalıştırma (Terminal ile)

- `<F5>`:  
  Kaydedilen mevcut dosyayı terminalde Python ile çalıştırır. Önceki terminal pencerelerini kapatır, ardından altta yeni bir terminal açar.

---

## 📁 Dosya ve Buffer Yönetimi

- `<Tab>`: Bir sonraki buffer’a geç  
- `<S-Tab>`: Önceki buffer’a dön  

---

## 🔍 Telescope Kısayolları

> 📦 `telescope.nvim` eklentisiyle birlikte çalışır.

- `<leader>ff`: Dosya bul (find_files)
- `<leader>fg`: Canlı arama (live_grep)
- `<leader>fh`: Açık buffer’larda ara (buffers)

---

## 💾 Dosya Kaydetme

- `<leader>w`: Dosyayı kaydet (`:w`)
- `<leader>x`: Kaydet ve çık (`:wq`)
- `<leader>a`: Tüm dosyaları kaydet ve çık (`:wqa`)

---

## ➕ Boş Satır Ekleme (Insert moduna girmeden)

- `<leader>o`: Geçerli satırın altına boş satır(lar) ekle  
- `<leader>O`: Geçerli satırın üstüne boş satır(lar) ekle

---

## 🌳 NvimTree / Neo-tree

- `<leader>e`: Dosya ağacını (Neo-tree) aç/kapat

---

## 🛠️ Compiler Eklentisi

> 📦 `compiler.nvim` gibi bir eklentiyle kullanılır.

- `<leader>c`: Compiler penceresini aç
- `<S-F7>`: Derleyici çıktılarını göster/gizle
- `<S-F6>`: Son kullanılan derleme görevini tekrar çalıştır

---

## 🧭 Ayar Dosyasını (init.lua) Açma

- `<leader>co`: `init.lua` dosyasını yeni bir sekmede sağda Neo-tree ile birlikte açar

---

## 📌 Notlar

- Tüm `map()` komutları `noremap` ve `silent` özellikleriyle tanımlanmıştır.
- Python terminal çalıştırma işlemi sadece dosya `*.py` ise anlamlıdır.
- `telescope`, `neotree`, `compiler.nvim` gibi eklentilerin kurulu ve ayarlanmış olması gerekmektedir.

# Neovim Keymap ve Ayarları

Bu yapılandırma, Python dosyalarını çalıştırmak, buffer ve dosya yönetimini kolaylaştırmak, Telescope entegrasyonu ve terminal ile etkileşim gibi işlevleri kısa yollarla optimize eder.

---

## 🚀 Temel Ayarlar

- `termguicolors` etkinleştirildi (daha iyi renk desteği için)
- Girinti ayarları:
  - `expandtab`: Tab tuşu boşluk olarak kullanılır.
  - `tabstop`, `softtabstop`, `shiftwidth`: 4 boşluk

---

## 🎯 Lider Tuşu

- `<Leader>` tuşu olarak `Space` (`Boşluk`) atanmıştır.

---

## 🧪 Python Dosyasını Çalıştırma (Terminal ile)

- `<F5>`:  
  Kaydedilen mevcut dosyayı terminalde Python ile çalıştırır. Önceki terminal pencerelerini kapatır, ardından altta yeni bir terminal açar.

---

## 📁 Dosya ve Buffer Yönetimi

- `<Tab>`: Bir sonraki buffer’a geç  
- `<S-Tab>`: Önceki buffer’a dön  

---

## 🔍 Telescope Kısayolları

> 📦 `telescope.nvim` eklentisiyle birlikte çalışır.

- `<leader>ff`: Dosya bul (find_files)
- `<leader>fg`: Canlı arama (live_grep)
- `<leader>fh`: Açık buffer’larda ara (buffers)

---

## 💾 Dosya Kaydetme

- `<leader>w`: Dosyayı kaydet (`:w`)
- `<leader>x`: Kaydet ve çık (`:wq`)
- `<leader>a`: Tüm dosyaları kaydet ve çık (`:wqa`)

---

## ➕ Boş Satır Ekleme (Insert moduna girmeden)

- `<leader>o`: Geçerli satırın altına boş satır(lar) ekle  
- `<leader>O`: Geçerli satırın üstüne boş satır(lar) ekle

---

## 🌳 NvimTree / Neo-tree

- `<leader>e`: Dosya ağacını (Neo-tree) aç/kapat

---

## 🛠️ Compiler Eklentisi

> 📦 `compiler.nvim` gibi bir eklentiyle kullanılır.

- `<leader>c`: Compiler penceresini aç
- `<S-F7>`: Derleyici çıktılarını göster/gizle
- `<S-F6>`: Son kullanılan derleme görevini tekrar çalıştır

---

## 🧭 Ayar Dosyasını (init.lua) Açma

- `<leader>co`: `init.lua` dosyasını yeni bir sekmede sağda Neo-tree ile birlikte açar

---

## 📌 Notlar

- Tüm `map()` komutları `noremap` ve `silent` özellikleriyle tanımlanmıştır.
- Python terminal çalıştırma işlemi sadece dosya `*.py` ise anlamlıdır.
- `telescope`, `neotree`, `compiler.nvim` gibi eklentilerin kurulu ve ayarlanmış olması gerekmektedir.

