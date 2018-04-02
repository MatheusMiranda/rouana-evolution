run:
	python -m rasa_core.run -d models/dialogue -u models/nlu/default/current

train-nlu:
	python -m rasa_nlu.train -c nlu_model_config.json --fixed_model_name current
