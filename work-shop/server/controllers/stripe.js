const prisma = require("../config/prisma")
const stripe = require('stripe')('sk_test_51RmbDUPDC7tuqqBCz0HLgeNjDHbm1Bw5Hz6Hm95ISYSHZqmArboBqaNs3X0Z8c8cEfCANvB7EllFEozKNt4oRywD00QNHvTeaY');

exports.payment = async (req, res) => {
  try {
    //code
    const stripe = require('stripe')('sk_test_51RmbDUPDC7tuqqBCz0HLgeNjDHbm1Bw5Hz6Hm95ISYSHZqmArboBqaNs3X0Z8c8cEfCANvB7EllFEozKNt4oRywD00QNHvTeaY');

    const paymentIntent = await stripe.paymentIntents.create({
      amount: 5000,
      currency: 'thb',
      automatic_payment_methods: {
        enabled: true,
      },
    });
    res.send({
      clientSecret: paymentIntent.client_secret,
    });
  } catch (err) {
    console.log(err)
    res.status(500).json({ message: "Server error" })
  }
}