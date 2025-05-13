require('@sap/cds');
// const { SELECT ,INSERT} = cds.ql;


module.exports = function () {

    this.after("READ", "Books", (req) => {
        req.forEach((book) => {
            if (book.stock > 20) {
                book.discount = 10;
            }
        });
    });

}