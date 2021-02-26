import System.Environment (getArgs)

interactWith function inputFile outpurFile = do
  input <- readFile inputFile
  writeFile outputFile (function input)

main = mainWith myFunction
  where mainWith function = do
    args <- getArgs
    case args of
        [input,output] -> interacrWith function input output
        _ -> putStrLn "error: exactly two arguments needed"

    myFunction = id
