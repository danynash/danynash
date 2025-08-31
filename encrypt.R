#Consult: https://nikitoshina.quarto.pub/quarto_encryption/
command <- c(
  "npx",  # Calls the Node Package Executor (npx) to run a package
  "staticrypt",  # The command to run the Staticrypt package, which encrypts static HTML files with a password
  "./docs/lessons/*",  # Specifies the path to the files to encrypt (all files in the _output directory)
  "-r",  # Recursive flag to process files in subdirectories
  "-d", "./docs/lessons/",  # Sets the output directory for the encrypted files to the same _output directory
  "-p", '"GLM2025"',  # Specifies the password to encrypt the files
  "--short",  # Generates a short URL-friendly hash
  "--template-color-primary", '"#6667AB"',  # Sets the primary color for the template
  "--template-color-secondary", '"#f9f9f3"',  # Sets the secondary color for the template
  "--template-title", '"Acceso curso EDU3826"',  # Sets the title displayed on the encryption page
  "--template-instructions", '"Ingresa la constraseña del curso"',  # Sets the instructions shown to the user
  "--template-button", '"Acceder"'  # Sets the text on the button that the user clicks to unlock the document
)

system(paste(command, collapse = " "))


