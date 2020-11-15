#!/bin/bash

ROOT_DIR=`pwd`
DATE=`date`

###################### Nowcast for Brazil ######################
cd $ROOT_DIR/_nowcasts/covid-global
./update_nowcasts.sh &

###################### Nowcast for NE cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional

echo "Starting nowcast for cities at `date`"
./update_nowcasts_cities.sh

###################### Nowcast for states ######################
echo "Starting nowcast for states at `date`"
./update_nowcasts.sh

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh
bin/update_github.sh

###################### Nowcast for BA cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for BA cities at `date`"
./update_nowcasts_state_cities.sh BA

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh
bin/update_github.sh

###################### Nowcast for PB cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for PB cities at `date`"
./update_nowcasts_state_cities.sh PB 

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh
bin/update_github.sh

###################### Nowcast for CE cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for CE cities at `date`"
./update_nowcasts_state_cities.sh CE

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh
bin/update_github.sh

###################### Nowcast for PE cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for PE cities at `date`"
./update_nowcasts_state_cities.sh PE

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh
bin/update_github.sh

###################### Nowcast for AL cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for AL cities at `date`"
./update_nowcasts_state_cities.sh AL

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh
bin/update_github.sh

################# Deaths nowcast for NE cities and states ###################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting deaths nowcast for states at `date`"
./update_deaths_nowcasts_cities.sh
./update_deaths_nowcasts.sh

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh
bin/update_github.sh
