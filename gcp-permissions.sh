PROJECT=projectname

NUM=$(gcloud projects describe $PROJECT --format='value(projectNumber)')
echo $PROJECT - $NUM

#https://stackoverflow.com/questions/51902661/error-gcloud-beta-functions-deploy-message-the-caller-does-not-have-perm

# The Cloud Build robot (${NUM}@cloudbuild.gserviceaccount.com) additionally needs to be a serviceAccountUser
# of the ${PROJECT-ID}@appspot.gserviceaccount.com account

gcloud iam service-accounts add-iam-policy-binding \
${PROJECT}@appspot.gserviceaccount.com \
--member=serviceAccount:${NUM}@cloudbuild.gserviceaccount.com \
--role=roles/iam.serviceAccountUser \
--project=${PROJECT}