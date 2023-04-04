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
        Schema::create('log_user_login', function (Blueprint $table) {
            $table->increments('log_user_id');
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->integer('user_id')->default(null);
            $table->string('ip_address', 15)->default(null);
            $table->string('is_login', 1)->default(null);
            $table->dateTime('last_login')->default(null);
            $table->string('is_logout', 1)->default(null);
            $table->dateTime('last_logout')->default(null);
            $table->dateTime('date_kicker')->default(null);
            $table->integer('user_id_kicker')->default(null);
            $table->string('ip_address_kicker', 15)->default(null);

            // Indexes
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('log_user_login');
    }
};
