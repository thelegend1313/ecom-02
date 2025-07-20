const prisma = require("../config/prisma")

exports.payment = async (req, res) => {
    try {
        //code
        
        res.send("Hellopaymaent")
    } catch (err) {
        console.log(err)
        res.status(500).json({ message: "Server error" })
    }
}