<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBoostPaymentVerificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('boost_payment_verifications', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('boost_id')->unsigned()->index();
            $table->foreign('boost_id')->references('id')->on('boosts')->onDelete('cascade');
            $table->integer('payment_verification_id')->unsigned()->index();
            $table->foreign('payment_verification_id')->references('id')->on('payment_verifications')->onDelete('cascade');
            $table->string('value');
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
        Schema::dropIfExists('boost_payment_verifications');
    }
}
