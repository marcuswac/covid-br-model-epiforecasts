#!/bin/bash

ROOT_DIR=`pwd`
DATE=`date`

###################### Nowcast for Brazil ######################
cd $ROOT_DIR/_nowcasts/covid-global
./update_nowcasts.sh &

###################### Nowcast for states ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for states at `date`"
./update_nowcasts.sh

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh &

###################### Nowcast for PI cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for PI cities at `date`"
./update_nowcasts_state_cities.sh PI

###################### Nowcast for SE cities ######################

cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for SE cities at `date`"
./update_nowcasts_state_cities.sh SE

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh &

###################### Nowcast for AL cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for AL cities at `date`"
./update_nowcasts_state_cities.sh AL

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh &

###################### Nowcast for PB cities ######################

cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for PB cities at `date`"
./update_nowcasts_state_cities.sh PB

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh &

###################### Nowcast for BA cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for BA cities at `date`"
./update_nowcasts_state_cities.sh BA

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh &

###################### Nowcast for CE cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for CE cities at `date`"
./update_nowcasts_state_cities.sh CE

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh &

###################### Nowcast for PE cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for PE cities at `date`"
./update_nowcasts_state_cities.sh PE 

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh &

###################### Nowcast for MA cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for MA cities at `date`"
./update_nowcasts_state_cities.sh MA

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh &

###################### Nowcast for RN cities ######################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting nowcast for RN cities at `date`"
./update_nowcasts_state_cities.sh RN

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh &

################# Deaths nowcast for NE cities and states ###################
cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting deaths nowcast for states at `date`"
#./update_nowcasts_cities_rna.sh
./update_deaths_nowcasts.sh

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh &

cd $ROOT_DIR/_nowcasts/covid-regional
echo "Starting deaths nowcast for NE cities at `date`"
./update_deaths_nowcasts_cities.sh

cd $ROOT_DIR
echo "Updating posts and pushing to github at `date`"
bin/update_posts.sh

echo "Finished nowcast execution at `date`"
