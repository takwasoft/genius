<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTopAdsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('top_ads', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('top_ad_category_id')->unsigned()->index();
            $table->foreign('top_ad_category_id')->references('id')->on('top_ad_categories')->onDelete('cascade');
            $table->integer('product_id')->unsigned()->index();
            $table->foreign('product_id')->references('id')->on('products')->onDelete('cascade');
            $table->integer('status')->default(0);
            $table->integer('paid')->default(0);
            $table->timestamp('start_at',0)->useCurrent();
            $table->timestamp('end_at',0)->useCurrent();
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
        Schema::dropIfExists('top_ads');
    }
}
