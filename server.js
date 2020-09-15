
const knex = require('knex');
const Slimbot = require('slimbot');
const slimbot = new Slimbot('1269034590:AAGdmaAenBcNsBzJmbbPDRg0sjuMUDPFn6I');
// CONFIG DATABASE 
const db = knex({
  client: 'mysql',
  connection: {
    host : 'localhost',
    user : 'admin',
    password : 'zakhulhaq*272727',
    database : 'support_kediri'
  }
})

// Register listeners
slimbot.on('message', message => {
  let command = message.text ;
  const id = message.chat.id ;
  const location = message.location ;
  let id_temp  ;
  if(location){
    console.log(id_temp)
  }
  if(command === '/tanyaancer'){
    slimbot.sendMessage(
      id, 
      `Masukan Nomor Internet atau Nomor Telepon`
    );
  } else if (message.text.indexOf('152') === 0 ) {
    db.select('*').from('ancer')
    .where('inet','=',message.text)
    .then( data => {
      slimbot.sendMessage(
        id, 
        `Internet : ${data[0].inet}\nVoip : ${data[0].voip}\nNama : ${data[0].nama}\nAncer : ${data[0].ancer}\nAlamat : ${data[0].alamat}`
      );
      if(data[0].lat !== '0' && data[0].long !== '0'){
        slimbot.sendLocation(
          id, 
          data[0].lat,
          data[0].long
        );  
      }
    }).catch(err => {
        console.log(err)
    })

  }else if (message.text.indexOf('03') === 0 ) {
    db.select('*').from('ancer')
    .where('voip','=',message.text)
    .then( data => {
      slimbot.sendMessage(
        id, 
        `Internet : ${data[0].inet}\nVoip : ${data[0].voip}\nNama : ${data[0].nama}\nAncer : ${data[0].ancer}\nAlamat : ${data[0].alamat}`
      );
      if(data[0].lat !== '0' && data[0].long !== '0'){
        slimbot.sendLocation(
          id, 
          data[0].lat,
          data[0].long
        );  
      }
    }).catch(err => {
        console.log(err)
    })

  } else if (command === '/inputancer') {
    slimbot.sendMessage(
      id, 
      `Cara Input Ancer - Ancer Baru`
    );
    slimbot.sendMessage(
      id, 
      `#inputancer\nInternet : 152606220572\nVoip : 03555236152\nNama : Bustomi\nAncer : Ada gg masuk. rumah nomor 3 cat warna kuning\nAlamat : REJOWINANGUN ,KADEMANGAN`
    );
  } 
    const spit = command.split('\n') ;
    const internet = spit[1].replace('Internet : ','') ;
    const voip = spit[2].replace('Voip : ','') ;
    const nama = spit[3].replace('Nama : ','') ;
    const ancer = spit[4].replace('Ancer : ','') ;
    const alamat = spit[5].replace('Alamat : ','') ;  
    command = spit[0] ;

  if(command === "#inputancer"){
    if(typeof internet !== 'undefined' && typeof voip !== 'undefined' && typeof nama !== 'undefined' && typeof ancer !== 'undefined' && typeof alamat !== 'undefined'){
      let tokengen = Math.random() ;
      id_temp = tokengen ;
      // console.log(id_temp)
      db('ancer').insert({
          token : tokengen,
          nama : nama,
          inet : internet,
          ancer : ancer,
          alamat : alamat,
          voip : voip
      }).then( () => {
        slimbot.sendMessage(
          id, 
          `Data berhasil diinput, Terima kasih,Lanjutkan dengan share lokasi pelanggan untuk melengkapi data`
        );     
      }).catch( err => {
        slimbot.sendMessage(
          id, 
          `Data gagal diinput, Coba Sekali lagi dan pastikan formatnya benar`
        );        
        console.log(err)
      }) 
    }else{
      slimbot.sendMessage(
        id, 
        `Format anda salah, begini format yang benar : `
      );
      slimbot.sendMessage(
        id, 
        `#inputancer\nInternet : 152606220572\nVoip : 03555236152\nNama : Bustomi\nAncer : Ada gg masuk. rumah nomor 3 cat warna kuning\nAlamat : REJOWINANGUN ,KADEMANGAN`
      );
  
    }
  }


      // db('ancer').where('token','=',id_temp)
      // .update({
      //     lat : location.latitude,
      //     long : location.longitude
      // }).then( () => {
      //   slimbot.sendMessage(
      //     id, 
      //     `Data Lokasi Ancer" sudah lengkap, Terima Kasih`
      //   );    
      // }).catch(err => {
      //   console.log(err)
      // })
});
 

// Call API
slimbot.startPolling();
// app.listen(3000, function() {
//   console.log('listening on 3000')
// })






