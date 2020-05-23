<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTopAdAdditionalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('top_ad_additionals', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('top_ad_id')->unsigned()->index();
            $table->foreign('top_ad_id')->references('id')->on('top_ads')->onDelete('cascade');
            $table->integer('additional_field_id')->unsigned()->index();
            $table->foreign('additional_field_id')->references('id')->on('additional_fields')->onDelete('cascade');
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
        Schema::dropIfExists('top_ad_additionals');
    }
}
