# Scraping-web-data-automation
![Cryptocurrency](https://cdn.wccftech.com/wp-content/uploads/2017/10/cryptojacking-2.jpg)
# Cryptocurrency Scraping

## Project ini merupakan tugas akhir praktikum Mata Kuliah Manajemen Data Statistika topik Web Scraping & Crawling Sumber data pada scraping ini dari situs https://goldprice.org/cryptocurrency-price/bitcoin-price di mana pada laman tersebut menyajikan live harga, market capitalization, Circulating Supply, dan perubahan harga 24 jam terakhir. Pada situs tersebut, data diupdate setiap detiknya. Scraping dilakukan menggunakan library rvest pada software R dan hasilnya disimpan pada MongoDB Atlas setiap 10 menit sekali dan tabel hasil scraping divisualisasikan dengan Rshiny.

### Status Scraping
[![Bitcoin Scraping](https://github.com/itqonihsn/Scraping-web-data-automation/actions/workflows/bitcoin_scrape.yml/badge.svg)](https://github.com/itqonihsn/Scraping-web-data-automation/actions/workflows/bitcoin_scrape.yml)

```json
[
  {
    "_id": "1",
    "name": "John Doe",
    "email": "john@example.com"
  },
  {
    "_id": "2",
    "name": "Jane Smith",
    "email": "jane@example.com"
  },
  {
    "_id": "3",
    "name": "Alice Johnson",
    "email": "alice@example.com"
  }
]
```

https://rpubs.com/Hasan_itqoni/1052894
https://kelompok4mds.shinyapps.io/Scraping-web-data-automation/

{"_id":
  {"$oid":"64829d80ce65eb57da0a4356"},
  "Rank": {
    "String"
  },
  "Name": {
    "String"
  },
  "Classical": {
    "Integer"
  },
  "Rapid": {
    "Integer"
  },
  "Blitz": {
    "Integer"
  },
  "Scraping_Date": {
    "Date Time"
  }
}


