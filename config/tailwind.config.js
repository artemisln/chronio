const defaultTheme = require('tailwindcss/defaultTheme')
const shadcnConfig = require('./shadcn.tailwind.js');

module.exports = {
  mode: 'jit',
  content: [
    ...shadcnConfig.content,
    './public/*.html',
    './app/components/**/*.erb', 
  ],
  safelist: [
    'h-[60px]',
    'rounded-full',
  ],
  theme: {
    ...shadcnConfig.theme,
    extend: {
      ...shadcnConfig.theme.extend,
    },
  },
  plugins: [
    ...shadcnConfig.plugins,
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
  ]
}
