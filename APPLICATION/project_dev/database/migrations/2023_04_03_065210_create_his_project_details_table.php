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
        Schema::create('his_project_detail', function (Blueprint $table) {
            $table->integer('his_project_detail_id')->autoIncrement();
            $table->integer('project_detail_id')->default(null);
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->string('user_delete', 20)->default(null);
            $table->dateTime('date_delete')->default(null);
            $table->string('reason_delete', 4000)->default(null);
            $table->integer('project_id')->default(null);
            $table->integer('application_id')->default(null);
            $table->integer('vendor_id')->default(null);
            $table->integer('pic_id')->default(null);
            $table->integer('task_id')->default(null);
            $table->string('task_detail', 4000)->default(null);
            $table->integer('task_progress')->default(null);
            $table->dateTime('plan_date_start')->default(null);
            $table->dateTime('plan_date_end')->default(null);
            $table->integer('plan_total_hours')->default(null);
            $table->dateTime('actual_date_start')->default(null);
            $table->dateTime('actual_date_end')->default(null);
            $table->integer('actual_total_hours')->default(null);

            // Indexes
            $table->primary(['his_project_detail_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('his_project_detail');
    }
};
