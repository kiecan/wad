from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Welcome to the Wheelchair Access API"}

@app.get("/items/{item_id}")
async def read_item(item_id):
    return {"item_id": item_id}


@app.get("/users/me")
async def read_user_me():
    return {"user": "Kieran"}


@app.get("/users/{user}")
async def read_user(user: str):
    return {"user": user}
