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
        Schema::create('app_feedback', function (Blueprint $table) {
            $table->integer('feedback_id')->autoIncrement();
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('sent_name', 100)->default(null);
            $table->string('email', 255)->default(null);
            $table->string('message', 4000)->default(null);
            $table->string('ip_address', 15)->default(null);

            // Indexes
            $table->primary(['feedback_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('app_feedback');
    }
};
