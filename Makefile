serve:
	. ${PWD}/../venv/bin/activate && ( \
	  nikola build; \
	  nikola auto --browser \
	)
#	nikola build
#	nikola auto --browser