// tests/app.test.js
const request = require("supertest");
const app = require("../src/index"); // Import your app instance

describe("GET /", () => {
  it("should return Hello from Node.js on AWS!", async () => {
    const response = await request(app).get("/");
    expect(response.status).toBe(200);
    expect(response.text).toBe("Hello from Node.js on AWS!");
  });
});
