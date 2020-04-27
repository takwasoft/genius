<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBoostPaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('boost_payments', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('boost_id')->unsigned()->index();
            $table->foreign('boost_id')->references('id')->on('boosts')->onDelete('cascade');
            $table->integer('payment_gateway_id')->unsigned()->index();
            $table->foreign('payment_gateway_id')->references('id')->on('payment_gateways')->onDelete('cascade');
            $table->double('amount');
            $table->integer('status')->default(0);
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
        Schema::dropIfExists('boost_payments');
    }
}
