<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClientesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clientes', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('cui');
            $table->string('nombres');
            $table->string('apellidos');
            $table->bigInteger('telefono');
            $table->string('email'); 
            $table->bigInteger('departamento_id')->unsigned(); 
            $table->bigInteger('municipio_id')->unsigned(); 
            $table->string('direccion');
            $table->string('ubicacion'); 
            $table->bigInteger('empleado_id')->unsigned(); 
            $table->foreign('departamento_id')->references('id')->on('departamentos')->cascadeOnDelete();
            $table->foreign('municipio_id')->references('id')->on('municipios')->cascadeOnDelete();
            $table->foreign('empleado_id')->references('id')->on('empleados')->cascadeOnDelete();
            

            
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
        Schema::dropIfExists('clientes');
    }
}
