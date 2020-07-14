<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTopAdPaymentVerificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('top_ad_payment_verifications', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('top_ad_id')->unsigned()->index();
            $table->foreign('top_ad_id')->references('id')->on('top_ads')->onDelete('cascade');
            $table->integer('payment_verification_id')->unsigned()->index();
            $table->foreign('payment_verification_id')->references('id')->on('payment_verifications')->onDelete('cascade');
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
        Schema::dropIfExists('top_ad_payment_verifications');
    }
}
