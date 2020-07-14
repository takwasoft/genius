<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBoostExtraChargesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('boost_extra_charges', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('boost_id')->unsigned()->index();
            $table->foreign('boost_id')->references('id')->on('boosts')->onDelete('cascade');
            $table->integer('extra_charge_rule_id')->unsigned()->index();
            $table->foreign('extra_charge_rule_id')->references('id')->on('extra_charge_rules')->onDelete('cascade');
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
        Schema::dropIfExists('boost_extra_charges');
    }
}
