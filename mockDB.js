(function() {
  window.mockDB = new function() {
    var products: {
      "1": {
        "id": "1",
        "name": "Pato de Borracha",
        "price": 5.99,
        "alvailable": "true"
      },
      "2": {
        "id": "2",
        "name": "Creme dental Colgate Luminous ",
        "price": 7.5,
        "alvailable": "true"
      },
      "3": {
        "id": "3",
        "name": "Escova de dentes genérica",
        "price": 2.99,
        "alvailable": "true"
      },
      "4": {
        "id": "4",
        "name": "Escova de dentes elétrica",
        "price": 52.6,
        "alvailable": "true"
      },
      "5": {
        "id": "5",
        "name": "Escova para costas",
        "price": 12.4,
        "alvailable": "false"
      },
      "6": {
        "id": "6",
        "name": "Pinho Sol",
        "price": 3.75,
        "alvailable": "true"
      },
      "7": {
        "id": "7",
        "name": "Desengordurante Veja",
        "price": 3.5,
        "alvailable": "true"
      },
      "8": {
        "id": "8",
        "name": "Desengordurante Zupp Citrus",
        "price": 3.25,
        "alvailable": "false"
      },
      "9": {
        "id": "9",
        "name": "Pia Bicicleta",
        "price": 175.95,
        "alvailable": "true"
      },
      "10": {
        "id": "10",
        "name": "Chuveiro Gourmet",
        "price": 258,
        "alvailable": "true"
      },
      "11": {
        "id": "11",
        "name": "Mini Golfe",
        "price": 97.45,
        "alvailable": "true"
      },
      "12": {
        "id": "12",
        "name": "Privada Ecológica",
        "price": 243.4,
        "alvailable": "true"
      }
    }
  }

  return {
    api: {
      getHomeProducts: function() {
        console.log("Home Products");
      },
      getDetailsProduct: function(id) {
        console.log("Details Product");
      }
    }
  }
})()
