import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './App.tsx'
import { PrimeReactProvider } from 'primereact/api';

// PrimeReact y Estilos
import "primereact/resources/themes/lara-light-blue/theme.css";
import "primereact/resources/primereact.min.css";
import "primeicons/primeicons.css";
import "primeflex/primeflex.css";
import './index.css'

import { AuthProvider } from './context/AuthContext.tsx'

ReactDOM.createRoot(document.getElementById('root')!).render(
  <React.StrictMode>
    <PrimeReactProvider value={{ ripple: true, inputStyle: 'filled' }}>
      <AuthProvider>
        <App />
      </AuthProvider>
    </PrimeReactProvider>
  </React.StrictMode>,
)
