<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/', 'App\Http\Controllers\IndexHomeController@index');
Route::get('/about', 'App\Http\Controllers\AboutUSController@about');
Route::get('/facilities', 'App\Http\Controllers\FacilitiesController@facilities');
Route::get('/contact', 'App\Http\Controllers\ContactController@contact');
Route::get('/rooms', 'App\Http\Controllers\RoomsController@room');
Route::get('/reservation', 'App\Http\Controllers\ReservationController@reservation');
Route::get('/step2', 'App\Http\Controllers\ReservationController@step2');
Route::get('/step3', 'App\Http\Controllers\ReservationController@step3');

Route::post('/doreservation', 'App\Http\Controllers\ReservationController@doreservation')->name('doreservation.submit');

Route::post('/step2update', 'App\Http\Controllers\ReservationController@step2update')->name('step2update.submit');

Route::post('/step3update', 'App\Http\Controllers\ReservationController@step3update')->name('step3update.submit');

Route::get('/bookingsingelview/{id}', 'App\Http\Controllers\ProfileController@bsingel');
Route::get('/profile', 'App\Http\Controllers\ProfileController@profile');
Route::get('/confirmation', 'App\Http\Controllers\ProfileController@confirmation');
Route::post('/userlogout', 'App\Http\Controllers\Auth\LoginController@userlogout')->name('user.logout');

Auth::routes();



//---admin route ---//

Route::get('/adminlogin', 'App\Http\Controllers\AdminLoginController@showAdminLogin')->name('admin.login');
Route::post('/admin/dologin', 'App\Http\Controllers\AdminLoginController@login')->name('adminlogin.submit');
Route::post('/admin/adminlogout', 'App\Http\Controllers\AdminLoginController@adminlogout')->name('admin.adminlogout');

Route::get('/home', 'App\Http\Controllers\HomeController@index')->name('home');
Route::get('/showrooms', 'App\Http\Controllers\HomeController@showrooms')->name('showrooms');

Route::post('/doaddroom', 'App\Http\Controllers\HomeController@doaddroom')->name('doaddroom.submit');

Route::post('/docontact', 'App\Http\Controllers\ContactController@docontact')->name('docontact.submit');

Route::get('/removeroom/{id}', 'App\Http\Controllers\HomeController@removeroom');

Route::post('/doeditroom', 'App\Http\Controllers\HomeController@doeditroom')->name('doeditroom.submit');

Route::get('/showbooking', 'App\Http\Controllers\HomeController@showbooking');

Route::get('/showbookingconfrimed/{id}', 'App\Http\Controllers\HomeController@showbookingconfrimed');

Route::get('/removebooking/{id}', 'App\Http\Controllers\HomeController@removebooking');

Route::get('/guest', 'App\Http\Controllers\HomeController@viewguest');

Route::get('/staff', 'App\Http\Controllers\HomeController@viewstaff');

Route::post('/staffadd', 'App\Http\Controllers\HomeController@doaddstaff')->name('doaddstaff.submit');

Route::get('/removestaff/{id}', 'App\Http\Controllers\HomeController@removestaff');

Route::get('/removestaff/{id}', 'App\Http\Controllers\HomeController@removestaff');

Route::post('/doeditstaff', 'App\Http\Controllers\HomeController@doeditstaff')->name('doeditstaff.submit');

Route::get('/expense', 'App\Http\Controllers\HomeController@expense');

Route::post('/addcategory', 'App\Http\Controllers\HomeController@addcategory')->name('addcategory.submit');

Route::post('/addexpense', 'App\Http\Controllers\HomeController@addexpense')->name('addexpense.submit');

Route::post('/editexpense', 'App\Http\Controllers\HomeController@editexpense')->name('editexpense.submit');

Route::get('/removeexpense/{id}', 'App\Http\Controllers\HomeController@removeexpense');


Route::get('/revenue', 'App\Http\Controllers\HomeController@revenue');
Route::get('/messages', 'App\Http\Controllers\HomeController@messages');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
