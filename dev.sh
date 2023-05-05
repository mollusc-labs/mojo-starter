#!/bin/sh
export $(cat .env | xargs) && morbo app.pl
