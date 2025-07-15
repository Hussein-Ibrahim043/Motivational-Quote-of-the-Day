#!/bin/bash

# -------------------------------
# Motivational Quote of the Day 💡
# -------------------------------


YELLOW='\033[1;33m'
CYAN='\033[1;36m'
GRAY='\033[1;30m'
RESET='\033[0m'
BOLD='\033[1m'


quotes=(
  "Push yourself, because no one else is going to do it for you. – Forleo Moreno"
  "Success doesn't come from what you do occasionally, it comes from what you do consistently. – Marie Forleo"
  "Dream it. Wish it. Do it. – Motivational Saying"
  "The harder you work for something, the greater you'll feel when you achieve it. – Anonymous"
  "Don’t watch the clock; do what it does. Keep going. – Sam Levenson"
  "Great things never come from comfort zones. – Joe Leonardo"
  "You don’t need to see the whole staircase, just take the first step. – Martin Luther King Jr."
  "Success is not final, failure is not fatal: it is the courage to continue that counts. – Winston Churchill"
  "Stay hungry, stay foolish. – Steve Jobs"
  "Your limitation—it’s only your imagination. – Unknown"
  "Push harder than yesterday if you want a different tomorrow. – Anonymous"
  "Do something today that your future self will thank you for. – Sean Patrick Flanery"
  "It always seems impossible until it is done. – Nelson Mandela"
  "Opportunities don’t happen. You create them. – Chris Grosser"
  "Don’t be busy. Be productive. – Tim Ferriss"
  "Either you run the day or the day runs you. – Jim Rohn"
  "Small progress is still progress. – Unknown"
  "Discipline is doing what needs to be done, even when you don’t feel like doing it. – Unknown"
  "Doubt kills more dreams than failure ever will. – Suzy Kassem"
  "Action is the foundational key to all success. – Pablo Picasso"
)


RANDOM_INDEX=$((RANDOM % ${#quotes[@]}))
QUOTE="${quotes[$RANDOM_INDEX]}"


IFS="–" read -r quote_text quote_author <<< "$QUOTE"


current_time=$(date +"%A, %d %B %Y — %I:%M %p")


clear
echo -e "${CYAN}┌─────────────────────────────────────────────┐"
echo -e "│      💡 ${BOLD}Motivational Quote of the Day${RESET}${CYAN}       │"
echo -e "└─────────────────────────────────────────────┘${RESET}"
echo
echo -e "${YELLOW}\"${quote_text}\"${RESET}"
echo -e "        – ${CYAN}${quote_author}${RESET}"
echo
echo -e "${GRAY}📅 $current_time${RESET}"
echo
