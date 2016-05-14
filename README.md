# Shopify Image Downloader

Backs up product images from shopify

### How

* Go to your shop, open the javascript console, and enter the following:

```javascript
$.get('/products.json', function (data) { copy(data) })
```

* `$ mkdir my-cool-backup`
* `$ touch products.json`
* `cmd + v` inside `products.json` to paste the shopify json
* `$ ruby download_images.rb`
