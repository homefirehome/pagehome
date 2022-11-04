<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJerarquiasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jerarquias', function (Blueprint $table) {
            
            $table->id();
            $table->bigInteger('empleado_id')->unsigned(); 
            $table->bigInteger('jefe_id')->unsigned(); 
            $table->foreign('empleado_id')->references('id')->on('empleados')->cascadeOnDelete();
            $table->foreign('jefe_id')->references('id')->on('empleados')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jerarquias');
    }
}
