const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'mydatabase',  // Change to your actual DB name
  password: 'Priyanka2003',  // Replace with your PostgreSQL password
  port: 5433,  // Change this if your PostgreSQL is on a different port
});

// Test database connection
pool.connect()
  .then(client => {
    console.log('✅ PostgreSQL connected successfully!');
    client.release(); // Release the connection
  })
  .catch(err => console.error('❌ PostgreSQL connection error:', err.stack));

module.exports = pool;
