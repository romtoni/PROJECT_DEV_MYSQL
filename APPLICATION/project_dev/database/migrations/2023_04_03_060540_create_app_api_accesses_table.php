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
        Schema::create('app_api_access', function (Blueprint $table) {
            $table->integer('access_id')->autoIncrement();
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->integer('access_type_id')->default(null);
            $table->integer('client_id')->default(null);
            $table->string('token', 255)->default(null);
            $table->string('is_active', 1)->default(null);

            // Indexes
            $table->primary(['access_id']);

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('app_api_access');
    }
};
