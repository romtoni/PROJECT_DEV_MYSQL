<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('app_menu', function (Blueprint $table) {
            $table->increments('menu_id');
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->string('menu_name', 50)->default(null);
            $table->string('link', 150)->default(null);
            $table->integer('sort_no')->default(null);
            $table->integer('parent_menu_id')->default(null);
            $table->string('is_crud', 1)->default('N');
            $table->string('is_new', 1)->default('Y');
            $table->string('menu_status', 1)->default('A');

            // Indexes
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('app_menu');
    }
};
