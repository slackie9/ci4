<?php

namespace App\Controllers;

class Pages extends BaseController
{
	public function index()
	{
    
    $data = ["title" => "Slackie's Web"];
  
    return view('pages/home', $data);
	}
  
  public function about()
  {
    $data = ["title" => "About"];
    
    return view('pages/about', $data);
    
  }
  public function contact()
  {
    $data = [
      'title' => 'Contact',
      'alamat' => [
      [
        'tipe'=>'Rumah',
        'alamat'=>'jln abc no 123',
        'kota'=>'jakarta selatan'
      ],
      [
        'tipe'=>'Kantor',
        'alamat'=>'jln xyz no 789',
        'kota'=>'jakarta selatan'
      ]
    ]
  ];
    
    return view('pages/contact', $data);
    
  }

}
