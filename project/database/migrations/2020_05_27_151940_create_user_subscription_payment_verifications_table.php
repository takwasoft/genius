<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserSubscriptionPaymentVerificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_subscription_payment_verifications', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_subscription_id')->unsigned()->index();

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
        Schema::dropIfExists('user_subscription_payment_verifications');
    }
}
