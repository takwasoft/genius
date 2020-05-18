<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExtraChargeRulesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('extra_charge_rules', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('payment_gateway_id')->unsigned()->index();
            $table->foreign('payment_gateway_id')->references('id')->on('payment_gateways')->onDelete('cascade');
            $table->string('title');
            $table->string('description');
            $table->integer('fixed');
            $table->double('from');
            $table->double('to');
            $table->double('charge');
            $table->integer('cs');
            $table->integer('cr');
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
        Schema::dropIfExists('extra_charge_rules');
    }
}
