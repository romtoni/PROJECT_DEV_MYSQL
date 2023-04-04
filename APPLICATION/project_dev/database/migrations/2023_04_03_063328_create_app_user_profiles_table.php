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
        Schema::create('app_user_profile', function (Blueprint $table) {
                $table->increments('profile_id');
                $table->string('user_create', 20)->default(null);
                $table->dateTime('date_create')->default(null);
                $table->string('user_modify', 20)->default(null);
                $table->dateTime('date_modify')->default(null);
                $table->string('first_name', 20)->default(null);
                $table->string('last_name', 20)->default(null);
                $table->string('photo', 4000)->default(null);
                $table->binary('photo_blob');
                $table->string('profile', 4000)->default(null);
                $table->string('email', 100)->default(null);
                $table->integer('user_id')->default(null);

                // Indexes
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('app_user_profile');
    }
};
