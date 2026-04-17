// backend/reset-admin-pass.js
const { PrismaClient } = require("@prisma/client");
const bcrypt = require("bcryptjs");

const prisma = new PrismaClient();

//Ejecutar con: node reset-admin-pass.js
async function resetAdminPassword() {
  try {
    // Generar hash con bcrypt (10 rounds)
    const hash = await bcrypt.hash("123456", 10); //passwrod 123456
    console.log("✅ Hash generado:", hash);

    // Actualizar el usuario admin
    const result = await prisma.usuario.updateMany({
      where: { usuario: "admin" }, // o usa: { email: 'admin@tuempresa.com' }
      data: { password: hash },
    });

    if (result.count > 0) {
      console.log("✅ Contraseña de admin actualizada correctamente");
    } else {
      console.log('⚠️ No se encontró ningún usuario con usuario = "admin"');
    }
  } catch (error) {
    console.error("❌ Error:", error);
  } finally {
    await prisma.$disconnect();
  }
}

resetAdminPassword();
