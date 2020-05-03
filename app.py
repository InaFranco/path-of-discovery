from model.timeline import Timeline

def start_combat(player, enemy):
    timeline = Timeline()
    initiative = get_player_initiative()
    enemy_initiative = get_player_initiative()
    timeline.start_initiatives(initiative, enemy_initiative)
    while True:
        event = timeline.next_()
        process_event(event)
        if event.source == "player":
            action = get_player_action()
            timeline.add(action)
        elif event.source == "enemy":
            action = get_enemy_action()
            timeline.add(action)

def get_player_initiative():
    return 0

def get_player_action():
    return {
        "action_name": "attack",
        "cast": 10
    }

def get_enemy_action():
    return {
        "action_name": "attack",
        "cast": 10
    }

def process_event(event):
    print(event)

def main():
    player = {}
    enemy = {}
    if True:
        start_combat(player, enemy)