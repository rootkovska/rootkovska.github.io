all:
	mv Gemfile _Gemfile && docker-compose-v1 up && mv _Gemfile Gemfile

clean:
	$(RM) -r _site

.PHONY: all clean
