// para copiar un script en el portapapeles

//  echo "curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --version latest" | pbcopy
// posible formar de
// parsear la linea entre comillas, agregarle el echo y ahora si
// mandarlo al pbcopy
con un script 

// curl -sSL https://dot.net/v1/dotnet-install.sh | bash /dev/stdin --version latest



open System
open System.IO

let sr = new StreamReader @"input.txt";


while not sr.EndOfStream do
      let line = sr.ReadLine()
      printfn "%A" line
