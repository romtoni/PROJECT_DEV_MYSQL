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
        Schema::create('log_hit', function (Blueprint $table) {
            $table->increments('hit_id');
            $table->string('user_create', 20)->default('GUEST');
            $table->dateTime('date_create')->default(DB::raw('CURRENT_TIMESTAMP'));
            $table->string('ip_address', 15)->default(null);
            $table->string('country', 100)->default(null);
            $table->dateTime('date_hit')->default(null);

            // Indexes
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('log_hit');
    }
};
