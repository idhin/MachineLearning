<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Naive extends CI_Controller {
 function __construct(){
  parent::__construct();
  $this->load->model("modelNaive","mn");
 }
 public function index(){ 
  $Nspesies=$this->mn->Nspesies();
  
  foreach ($Nspesies as $value) {
   if($value->spesies=="setosa"){
    $N1=$value->jumlah;
    $N1dev=$N1*($N1-1);

    $sumpetal_setosa_length=$value->sumpetal_legth;
    $sumpetal_setosa_width=$value->sumpetal_width;

    $powpetal_setosa_length=$value->powpetal_length;
    $powpetal_setosa_width=$value->powpetal_width;

    $Mu_setosa_L=$sumpetal_setosa_length/$N1;
    $Mu_setosa_W=$powpetal_setosa_width/$N1; //rata rata

    $baris_atas= ($N1*($powpetal_setosa_length))-pow($sumpetal_setosa_length,2); 
    $stdsetosa_length= sqrt($baris_atas/$N1dev);     // standar deviasi length

    $baris_atas= ($N1*($powpetal_setosa_width))-pow($sumpetal_setosa_width,2); 
    $stdsetosa_width= sqrt($baris_atas/$N1dev);   // standar deviasi width
   
   }else 
    if($value->spesies=="versicolor"){
    $N2=$value->jumlah;
    $N2dev=$N2*($N2-1);
    $sumpetal_vcolor_length=$value->sumpetal_legth;
    $sumpetal_vcolor_width=$value->sumpetal_width;

    $powpetal_vcolor_length=$value->powpetal_length;
    $powpetal_vcolor_width=$value->powpetal_length;

    $Mu_vcolor_L=$sumpetal_vcolor_length/$N2;
    $Mu_vcolor_W=$sumpetal_vcolor_width/$N2; // rata rata

    $baris_atas= ($N2*($powpetal_vcolor_length))-pow($sumpetal_vcolor_length,2); 
    $stdvcolor_length= sqrt($baris_atas/$N2dev);     // standar deviasi length

    $baris_atas= ($N2*($powpetal_vcolor_width))-pow($sumpetal_vcolor_width,2); 
    $stdvcolor_width= sqrt($baris_atas/$N2dev);   // standar deviasi width

   }else 
    if($value->spesies=="virginica"){
    $N3=$value->jumlah;
    $N3dev=$N3*($N3-1);
    $sumpetal_vginica_length=$value->sumpetal_legth;
    $sumpetal_vginica_width=$value->sumpetal_width;

    $powpetal_vginica_length=$value->powpetal_length;
    $powpetal_vginica_width=$value->powpetal_length;

    $Mu_vginica_L=$sumpetal_vginica_length/$N3;
    $Mu_vginica_W=$sumpetal_vginica_width/$N3; // rata rata

    $baris_atas= ($N3*($powpetal_vginica_length))-pow($sumpetal_vginica_length,2); 
    $stdvginica_length= sqrt($baris_atas/$N3dev);     // standar deviasi length

    $baris_atas= ($N3*($powpetal_vginica_width))-pow($sumpetal_vginica_width,2); 
    $stdvginica_width= sqrt($baris_atas/$N3dev);   // standar deviasi width
   }
  }

  $Ntotal=$N1+$N2+$N3;
  $Ntotaldev=$Ntotal*($Ntotal-1);

  $PC1=$N1/$Ntotal;     //PC1 -> Peluang Setorsa
  $PC2=$N2/$Ntotal;   //PC2 -> Peluang versicolor
  $PC3=$N3/$Ntotal;   //PC3 -> Peluang virginica

  $SumPetal=$this->mn->SumPetal()->row(0,'array');

  // Miu dan Standar Deviasi untuk seluruh spesies------------------------------

  $petalLength_Mu=round($SumPetal['sum_length'],3)/$Ntotal;
  $petalWidth_Mu=round($SumPetal['sum_width'],3)/$Ntotal;

  // -- Petal Length

  $selisih1=($Ntotal*($SumPetal['sum_length_pow']))-pow($SumPetal['sum_length'],2);
  $petalLength_SD=sqrt($selisih1/$Ntotaldev);

  // -- Petal Width
  $selisih2=($Ntotal*($SumPetal['sum_width_pow']))-pow($SumPetal['sum_width'],2);
  $petalWidth_SD=sqrt($selisih2/$Ntotaldev);



  // ----------------------------------------------------------


  $fetchDataTest=$this->mn->getDataTest();

  foreach ($fetchDataTest as $value) {
   $length=$value->petal_length;
   $width=$value->petal_width;

   $PX1=1/sqrt(2*3.14)/$petalLength_SD*exp(-0.5*pow(($length-$petalLength_Mu),2)/pow($petalLength_SD,2));  //Untuk Petal Length keseluruhan
   $PX2=1/sqrt(2*3.14)/$petalWidth_SD*exp(-0.5*pow(($width-$petalWidth_Mu),2)/pow($petalWidth_SD,2));  //Untuk Petal Width keseluruhan

   $PX1setosa=1/sqrt(2*3.14)/$stdsetosa_length*exp(-0.5*pow(($length-$Mu_setosa_L),2)/pow($stdsetosa_length,2));
   $PX1vcolor=1/sqrt(2*3.14)/$stdvcolor_length*exp(-0.5*pow(($length-$Mu_vcolor_L),2)/pow($stdvcolor_length,2));
   $PX1vginica=1/sqrt(2*3.14)/$stdvginica_length*exp(-0.5*pow(($length-$Mu_vginica_L),2)/pow($stdvginica_length,2));

   $PX2setosa=1/sqrt(2*3.14)/$stdsetosa_width*exp(-0.5*pow(($width-$Mu_setosa_W),2)/pow($stdsetosa_width,2));  
   $PX2vcolor=1/sqrt(2*3.14)/$stdvcolor_width*exp(-0.5*pow(($width-$Mu_vcolor_W),2)/pow($stdvcolor_width,2));
   $PX2vginica=1/sqrt(2*3.14)/$stdvginica_width*exp(-0.5*pow(($width-$Mu_vginica_W),2)/pow($stdvginica_width,2));

   // last step perbandingan
   $PX1X2setosa=($PX1setosa*$PX2setosa*$PC1)/($PX1/$PX2);
   $PX1X2vcolor=($PX1vcolor*$PX2vcolor*$PC2)/($PX1/$PX2);
   $PX1X2vginica=($PX1vginica*$PX2vginica*$PC3)/($PX1/$PX2);

   $savearray=array($PX1X2vginica,$PX1X2setosa,$PX1X2vcolor);
   $higest_val=max($savearray);
   
   if($higest_val==$PX1X2setosa){
    $result="setosa";
   }else if($higest_val==$PX1X2vcolor){
    $result="vcolor";
   }else if($higest_val==$PX1X2vginica){
    $result="virginica";
   }
   echo "<pre>"; print_r($result."   ".$PX1X2setosa."   ".$PX1X2vcolor."   ".$PX1X2vginica."   "); 
  }
 }
}