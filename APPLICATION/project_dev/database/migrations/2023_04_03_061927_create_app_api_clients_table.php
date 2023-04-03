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
        Schema::create('app_api_client', function (Blueprint $table) {
            $table->integer('client_id')->autoIncrement();
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->string('client_name', 255)->default(null);
            $table->string('client_business_type', 100)->default(null);
            $table->integer('access_type_id')->default(null);
            $table->string('is_active', 1)->default(null);

            // Indexes
            $table->primary(['client_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('app_api_client');
    }
};
