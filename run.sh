if [ "$1" = "up" ]; then
    echo "Starting services..."
    docker compose up -d
    echo "Copying pg_hba.conf..."
    cp db/pg_hba.conf db/data/pg_hba.conf
    echo "Restarting services..."
    docker compose restart

    exit 0
fi

if [ "$1" = "down" ]; then
    docker compose down

    exit 0
fi

if [ "$1" = "log" ]; then
    docker compose logs -f

    exit 0
fi

echo "Incorrect command."
exit 1