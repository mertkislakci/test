from fastapi import FastAPI, Request

app = FastAPI()

@app.get("/hello")
def read_hello():
    return {"message": "Merhaba Dünya"}

@app.post("/hello")
async def post_hello(request: Request):
    data = await request.json()
    if data.get("text") == "selam":
        return {"message": "naber"}
    return {"message": "anlamadım"}
