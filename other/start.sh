node ./other/setup-swap.js
sqlite3 $DATABASE_PATH "PRAGMA journal_mode = WAL;"
sqlite3 $CACHE_DATABASE_PATH "PRAGMA journal_mode = WAL;"
npx prisma migrate deploy
npm start
