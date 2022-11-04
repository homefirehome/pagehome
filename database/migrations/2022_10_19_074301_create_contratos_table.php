<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContratosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('contratos', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('cliente_id')->unsigned(); 
            $table->bigInteger('producto_id')->unsigned(); 
            $table->bigInteger('plan_id')->unsigned(); 
            $table->bigInteger('vendedor_id')->unsigned(); 
            $table->bigInteger('estado_id')->unsigned(); 
            $table->string('contrato_file')->nullable();
            $table->foreign('producto_id')->references('id')->on('productos')->cascadeOnDelete();
            $table->foreign('plan_id')->references('id')->on('planes')->cascadeOnDelete();
            $table->foreign('vendedor_id')->references('id')->on('empleados')->cascadeOnDelete();
            $table->foreign('estado_id')->references('id')->on('estados')->cascadeOnDelete();
            $table->foreign('cliente_id')->references('id')->on('clientes')->cascadeOnDelete();
            
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
        Schema::dropIfExists('contratos');
    }
}
