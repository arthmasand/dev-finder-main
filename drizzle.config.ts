import { defineConfig } from 'drizzle-kit';
import { config } from 'dotenv';

// Load .env file
config(); 
console.log("Database URL:", process.env.DATABASE_URL);  
export default defineConfig({
  schema: "./src/db/schema.ts",
  dialect: 'postgresql',  // Use 'pg' for PostgreSQL
  dbCredentials: {
    url: process.env.DATABASE_URL!,   
  },
  verbose: true,
  strict: true,
});  