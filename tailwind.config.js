/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      colors: {
        background: "#2a2a47",
        card: "#1f1f3b",
        blueAccent: "#4744c4",
        border: "#696998",
      },
      fontFamily: {
        lato: ["Lato", "Sans-Serif"],
      },
    },
  },
  plugins: [],
};
