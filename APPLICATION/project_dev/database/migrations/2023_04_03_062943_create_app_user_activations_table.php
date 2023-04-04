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
        Schema::create('app_user_activation', function (Blueprint $table) {
            $table->increments('activation_id');
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->integer('user_id')->default(null);
            $table->dateTime('activation_sent_date')->default(null);
            $table->string('activation_sent_status', 3)->default(null);
            $table->string('activation_sent_desc', 4000)->default(null);
            $table->dateTime('activation_rec_date')->default(null);
            $table->string('activation_rec_status', 3)->default(null);
            $table->string('activation_rec_desc', 4000)->default(null);

            // Indexes
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('app_user_activation');
    }
};
