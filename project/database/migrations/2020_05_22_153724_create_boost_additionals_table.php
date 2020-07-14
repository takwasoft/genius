<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBoostAdditionalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('boost_additionals', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('boost_id')->unsigned()->index();
            $table->foreign('boost_id')->references('id')->on('boosts')->onDelete('cascade');
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
        Schema::dropIfExists('boost_additionals');
    }
}
