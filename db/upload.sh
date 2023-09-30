#!/usr/bin/env bash
psql -h localhost -U postgres < ./opt/rates.sql
psql -h localhost -U postgres -c "SELECT 'alive'"
psql -h localhost -U postgres -c "SELECT current_database();"