<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHiddenChargesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hidden_charges', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('payment_gateway_id')->unsigned()->index();
            $table->string('title');
            $table->string('description');
            $table->integer('fixed');
            $table->double('from');
            $table->double('to');
            $table->double('charge');
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
        Schema::dropIfExists('hidden_charges');
    }
}
