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
        Schema::create('log_approval_file', function (Blueprint $table) {
            $table->increments('log_approval_file_id');
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->integer('log_approval_id')->default(null);
            $table->string('file_ext', 3)->default(null);
            $table->string('storage_code', 4)->default(null);
            $table->string('physical_file', 4000)->default(null);
            $table->binary('blob_file');
            $table->string('cloud_file', 4000)->default(null);

            // Indexes
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('log_approval_file');
    }
};
