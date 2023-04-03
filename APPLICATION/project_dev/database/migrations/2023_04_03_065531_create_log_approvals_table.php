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
        Schema::create('log_approval', function (Blueprint $table) {
            $table->integer('log_approval_id')->autoIncrement();
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('log_approval_status', 10)->default(null);
            $table->string('log_approval_description', 4000)->default(null);
            $table->string('log_approval_user', 20)->default(null);
            $table->dateTime('log_approval_date')->default(null);
            $table->string('entry_code', 3)->default(null);
            $table->integer('budget_id')->default(null);
            $table->integer('project_id')->default(null);
            $table->integer('budget_project_id')->default(null);
            $table->integer('cr_id')->default(null);
            $table->integer('bugfix_id')->default(null);

            // Indexes
            $table->primary(['log_approval_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('log_approval');
    }
};
