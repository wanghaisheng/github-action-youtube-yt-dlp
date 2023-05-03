#!/bin/sh
set -eu
if [ $version = latest ]
then
  latest_version=$(gh api repos/yt-dlp/yt-dlp/releases/latest -q .tag_name)
  echo version=$latest_version >> $GITHUB_OUTPUT
else
  echo version=$version >> $GITHUB_OUTPUT
fi