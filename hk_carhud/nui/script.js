$(function(){
    window.addEventListener('message', function(event){
        let e = event.data;
        if (e.action === "show:carhud"){ // si la accion es InVeh entonces...
            $('.container-car').show(250)
            $('.revo').show(250) // mostrar carhud
            $('.velocity').text(Math.round(e.velocidad) + '');
            $(".fuelprogin").css({"width": Math.round(e.fuel) + "%"});
            $('.revo-left, .revo-right').css({'width' : Math.round(e.rpm- 50) + '%'});

            if (e.vida <= 60) {
                $('#motor-icon').css({'color': 'rgb(216, 198, 40)', 'animation': 'pulse .8s infinite'});
            } else {
                $('#motor-icon').css({'color': 'rgba(255, 255, 255, 0.089)', 'animation': 'none'});
            }; 

        } else if (e.action === "outVeh"){ // si la accion es outVeh entonces...
            $('.container-car').hide(250);
            $('.revo').hide(250); // ocultar carhud
        }

 
    }); // fin
}); // fin