var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer')
var novedadesModel = require('../models/novedadesModel')

/* GET home page. */
router.get('/', async function (req, res, next) {
  var novedades = await novedadesModel.getNovedades();
  res.render('index',{
    isNovedades:true,
    novedades
  });
});


router.post('/',async function (req, res, next) {

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var dni = req.body.dni;
  var telefono = req.body.tel;
  var email = req.body.email;
  var duda = req.body.duda;
  var obj = {
    to: 'valentinapereira22@hotmail.com',
    subject: 'Contacto desde la página web',
    html: nombre + '' + apellido + 'de dni' + dni + ' se contactó a traves de la web para concretar la reserva. <br> Desea recibir información acerca de:' + duda + ' a traves de su email: ' + email +
      ' o su telefono: ' + telefono
  }


  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }

  })
  var info = await transport.sendMail(obj);
  res.render('index',{
    message: 'Mensaje enviado correctamente',

})

})

  module.exports = router;
