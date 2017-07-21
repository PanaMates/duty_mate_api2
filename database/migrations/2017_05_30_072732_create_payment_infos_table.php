<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePaymentInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payment_infos', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');
            $table->string('account_name',300);
            $table->string('bsb',300);
            $table->string('street_address',400);
            $table->string('city',300);
            $table->integer('state_id');
            $table->string('mobile_number',300);
            $table->string('postcode',300);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payment_infos');
    }
}
