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
        Schema::create('tmp_user_login_attempt', function (Blueprint $table) {
            $table->integer('login_attempt_id')->autoIncrement();
            $table->dateTime('login_attempt_date')->default(null);
            $table->string('user_name', 20)->default(null);
            $table->string('password', 20)->default(null);
            $table->string('ip_address', 15)->default(null);

            // Indexes
            $table->primary(['login_attempt_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tmp_user_login_attempt');
    }
};
