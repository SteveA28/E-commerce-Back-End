const sequelize = require('../config/connection');
const { Category, Product, Tag, ProductTag } = require('../models');

const seedDatabase = async () => {
  await sequelize.sync({ force: true });

  // Create and seed your data here

  process.exit(0);
};

seedDatabase();
