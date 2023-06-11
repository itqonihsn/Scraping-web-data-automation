# Scraping-web-data-automation
![Cryptocurrency](https://cdn.wccftech.com/wp-content/uploads/2017/10/cryptojacking-2.jpg)
# Cryptocurrency Scraping

## Project ini merupakan tugas akhir praktikum Mata Kuliah Manajemen Data Statistika topik Web Scraping & Crawling Sumber data pada scraping ini dari situs https://goldprice.org/cryptocurrency-price/bitcoin-price di mana pada laman tersebut menyajikan live harga, market capitalization, Circulating Supply, dan perubahan harga 24 jam terakhir. Pada situs tersebut, data diupdate setiap detiknya. Scraping dilakukan menggunakan library rvest pada software R dan hasilnya disimpan pada MongoDB Atlas setiap 10 menit sekali dan tabel hasil scraping divisualisasikan dengan Rshiny.

### Status Scraping
[![Bitcoin Scraping](https://github.com/itqonihsn/Scraping-web-data-automation/actions/workflows/bitcoin_scrape.yml/badge.svg)](https://github.com/itqonihsn/Scraping-web-data-automation/actions/workflows/bitcoin_scrape.yml)

# Struktur Dokumen
Berikut ini contoh struktur dokumen hasil scraping
```json
[
  {
    "_id": ObjectId"6483ed58c7f102082a06c771",
    "no" : 1
    "Rank": "1",
    "Currency": "Bitcoin"
    "Market_Cap_": "510,702,494,841"
    "Circulatin_Suplly": "19,397,850"
    "Price": "$26,343.00"
    "Volume__24h_": "$9,712,774,079"
    "Change__24h_": "-0.45 %"
    
  },
  {
    "_id": ObjectId"6483ed58c7f102082a06c772",
    "no" : 1
    "Rank": "2",
    "Currency": "Ethereum"
    "Market_Cap_": "219,873,620,485"
    "Circulatin_Suplly": "120,227,838"
    "Price": "$1,830.26"
    "Volume__24h_": "$5,049,707,336"
    "Change__24h_": "-0.23 %"
  },
  {
    "_id": ObjectId"6483ed58c7f102082a06c773",
    "no" : 1
    "Rank": "1",
    "Currency": "Tether"
    "Market_Cap_": "83,351,125,139"
    "Circulatin_Suplly": "83,356,513,307"
    "Price": "$1.00"
    "Volume__24h_": "$16,805,016,458"
    "Change__24h_": "-0.01 %"
  }
]
```
# Hasil
Hasil dari project ini dapat dilihat pada halaman Rshiny apss https://kelompok4mds.shinyapps.io/Scraping-web-data-automation/ atau RPubhs
https://rpubs.com/Hasan_itqoni/1052894

# Penulis
## Muhammad Hasan Itqoni 
## G1501221029
## 6 Juni 2023

