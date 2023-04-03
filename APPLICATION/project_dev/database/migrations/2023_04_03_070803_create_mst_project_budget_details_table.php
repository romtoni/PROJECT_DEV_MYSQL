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
        Schema::create('mst_project_budget_detail', function (Blueprint $table) {
            $table->integer('project_budget_detail_id')->autoIncrement();
            $table->string('user_create', 20)->default(null);
            $table->dateTime('date_create')->default(null);
            $table->string('user_modify', 20)->default(null);
            $table->dateTime('date_modify')->default(null);
            $table->string('user_delete', 20)->default(null);
            $table->dateTime('date_delete')->default(null);
            $table->string('reason_delete', 4000)->default(null);
            $table->integer('project_budget_id')->default(null);
            $table->integer('budget_id')->default(null);
            $table->integer('plan_amount')->default(null);
            $table->integer('actual_amount')->default(null);

            // Indexes
            $table->primary(['project_budget_detail_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mst_project_budget_detail');
    }
};
