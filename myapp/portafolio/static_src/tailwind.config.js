/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
      // Busca archivos .html en el directorio de plantillas de CUALQUIER app
      '../../../**/templates/**/*.html',
      // Busca archivos .js en el directorio static_src de CUALQUIER app
      '../../../**/static_src/**/*.js',
      // Asegúrate de que también escanee los archivos de tu app portafolio
      '../**/*.py'
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}