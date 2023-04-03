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
        Schema::create('tmp_user_session', function (Blueprint $table) {
            $table->integer('session_id')->autoIncrement();
            $table->integer('session_start')->default(null);
            $table->integer('session_expire')->default(null);
            $table->integer('user_id')->default(null);
            $table->string('ip_address', 15)->default(null);

            // Indexes
            $table->primary(['session_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tmp_user_session');
    }
};
