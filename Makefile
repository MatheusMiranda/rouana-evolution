run:
	python -m rasa_core.run -d models/dialogue -u models/nlu/default/current

train:
	python -m rasa_nlu.train -c nlu_model_config.json --fixed_model_name current
	#python bot.py train-dialogue
	python -m rasa_core.train -s data/rouana_stories.md -d rouana_domain.yml -o models/dialogue --epochs 300
