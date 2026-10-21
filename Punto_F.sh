mkdir -p ~/Punto_F
IP_PUB=$(curl -s ifconfig.me)
CPU_MODEL=$(grep "model name" /proc/cpuinfo | head -n1 | awk '{for(i=1;i<=NF;i++) if($i ~ /i[3579]-/) print $i}')
CPU_FREQ=$(grep "model name" /proc/cpuinfo | head -n1 | awk -F'@' '{print $2}' | xargs)

echo "Mi ip publica es: $IP_PUB" > ~/Punto_F/Filtro_Avanzado.txt
echo "CPU Modelo: $CPU_MODEL Frecuencia: $CPU_FREQ" >> ~/Punto_F/Filtro_Avanzado.txt
