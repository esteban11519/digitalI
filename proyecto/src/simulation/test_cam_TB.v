`timescale 10ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:   09:45:24 12/04/2019
// Design Name:   test_cam
// Module Name:   C:/Users/UECCI/Desktop/pruebas camd2/hw/src/test_cam_TB.v
// Project Name:  test_cam
// Target Device:
// Tool versions:
// Description:
//
// Verilog Test Fixture created by ISE for module: test_cam
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

module test_cam_TB;

	// Inputs
	reg clk;
	reg rst;
	reg pclk;
	reg CAM_vsync;
	reg CAM_href;
	reg [7:0] CAM_px_data;


	// Outputs
	wire VGA_Hsync_n;
	wire VGA_Vsync_n;
	wire [3:0] VGA_R;
	wire [3:0] VGA_G;
	wire [3:0] VGA_B;
	wire CAM_xclk;
	wire CAM_pwdn;
	wire CAM_reset;

    // Senales de prueba ******************************

    wire [11:0] data_mem;
	wire [14:0] DP_RAM_addr_in;
	wire [11:0] DP_RAM_data_in;
	wire [14:0] DP_RAM_addr_out;


    // Senales de prueba ******************************
// Absolute Address in Esteban's computer
localparam d="D:/UNAL/semester6/digitali/proyecto/wp2-simulacion-captura-grupo-03/src/test_vga.txt";
	// Instantiate the Unit Under Test (UUT)
	test_cam uut (
		.clk(clk),
		.rst(rst),
		.VGA_Hsync_n(VGA_Hsync_n),
		.VGA_Vsync_n(VGA_Vsync_n),
		.VGA_R(VGA_R),
		.VGA_G(VGA_G),
		.VGA_B(VGA_B),

		// se�ales de prueba *******************************************
	   
	   .data_mem(data_mem),
	   .DP_RAM_addr_in(DP_RAM_addr_in),
	   .DP_RAM_data_in(DP_RAM_data_in),
	   .DP_RAM_addr_out(DP_RAM_addr_out),

		//Prueba *******************************************

		.CAM_xclk(CAM_xclk),
		.CAM_pwdn(CAM_pwdn),
		.CAM_reset(CAM_reset),
		.CAM_pclk(pclk),
		.CAM_vsync(CAM_vsync),
		.CAM_href(CAM_href),
		.CAM_px_data(CAM_px_data)
	);
	reg img_generate=0;
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		pclk = 0;
		CAM_vsync = 1;
		CAM_href = 0;
		CAM_px_data = 8'b00001111;
   	// Wait 100 ns for global reset to finish
		#20;
		rst = 0; // registros en f�sico para que reinicialicen.
		//#1_000_000;         // se puede quitar en simulacion, estoy esperando que la memoria se llene.
		img_generate=1; // Estaban pegados
	end

	always #0.5 clk  = ~clk;
 	always #2 pclk  = ~pclk;


	reg [9:0]line_cnt=0;
	reg [9:0]row_cnt=0;

	parameter TAM_LINE=320;	// es 160x2 debido a que son dos pixeles de RGB
	parameter TAM_ROW=120;
	
	parameter BLACK_TAM_LINE=4;
	parameter BLACK_TAM_ROW=4;

	/*************************************************************************
			INICIO DE SIMULACION DE SE�ALES DE LA CAMARA
	**************************************************************************/
	/*simulaci�n de contador de pixeles para  general Href y vsync*/
	initial forever  begin
		@(posedge pclk) begin
		if (img_generate==1) begin
			line_cnt=line_cnt+1;
			if (line_cnt >TAM_LINE-1+BLACK_TAM_LINE) begin
				line_cnt=0;
				row_cnt=row_cnt+1;
				if (row_cnt>TAM_ROW-1+BLACK_TAM_ROW) begin
					row_cnt=0;
				end
			end
		end
		end
	end

	/*simulaci�n de la se�al vsync generada por la camara*/
	initial forever  begin
		@(posedge pclk) begin
            if (img_generate==1) begin
                    if (row_cnt==0)begin
                        CAM_vsync  = 1;
                    end
                if (row_cnt==BLACK_TAM_ROW/2)begin
                    CAM_vsync  = 0;
                end
            end
		end
	end

	/*simulaci�n de la se�al href generada por la camara*/
	initial forever  begin
		@(negedge pclk) begin
            if (img_generate==1) begin
                if (row_cnt>BLACK_TAM_ROW-1)begin
                    if (line_cnt==0)begin
                      //CAM_px_data=~CAM_px_data;
                        CAM_href  = 1;
                    end
                end
                if (line_cnt==TAM_LINE)begin
                    CAM_href  = 0;
                end
            end
		end
	end


	/*************************************************************************
			FIN SIMULACI�N DE SE�ALES DE LA CAMARA
	**************************************************************************/

	/*************************************************************************
			INICIO DE  GENERACION DE ARCHIVO test_vga
	**************************************************************************/

	/* log para cargar de archivo*/
	integer f;

	initial begin
      f = $fopen(d,"w");
   end

	reg clk_w =0;
	always #1 clk_w  = ~clk_w;

	/* ecsritura de log para cargar se cargados en https://ericeastwood.com/lab/vga-simulator/*/
	initial forever begin
	@(posedge clk_w)
		$fwrite(f,"%0t ps: %b %b %b %b %b\n",$time,VGA_Hsync_n, VGA_Vsync_n, VGA_R[3:0],VGA_G[3:0],VGA_B[3:0]);
	end

endmodule
