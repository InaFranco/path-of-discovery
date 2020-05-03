
class Timeline():

    def __init__(self):
        self.timeline = {}
        self.actual_time = 0

    def add(self, action):
        time = action.cast + self.actual_time
        self.timeline[time].append(action)

    def next_(self):
        next_events = self.timeline.keys()
        output = next_events[0]
        return output
    
    def start_initiatives(self, player, enemy):
        pass