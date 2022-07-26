# !/bin/bash
pm2 delete all
pm2 start "serve -s frontend/build -l 3000"
cd backend
pm2 start "python3 -m uvicorn main:app --host 0.0.0.0 --port 8000"
cd ..