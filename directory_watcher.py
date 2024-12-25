import json
import os
from watchdog.observers import Observer
from watchdog.events import FileSystemEventHandler
import time

class WatcherHandler(FileSystemEventHandler):
    def on_any_event(self, event):
        log_entry = {
            "event_type": event.event_type,
            "src_path": event.src_path,
            "is_directory": event.is_directory
        }
        log_dir = os.path.expanduser("~/bsm/logs")
        log_file = os.path.join(log_dir, "changes.json")
        os.makedirs(log_dir, exist_ok=True)
        with open(log_file, "a") as f:
            f.write(json.dumps(log_entry) + "\n")

if __name__ == "__main__":
    path_to_watch = os.path.expanduser("~/bsm/test")
    os.makedirs(path_to_watch, exist_ok=True)  # İzlenecek dizin yoksa oluştur
    event_handler = WatcherHandler()
    observer = Observer()
    observer.schedule(event_handler, path=path_to_watch, recursive=True)
    observer.start()
    try:
        print(f"İzleme başladı: {path_to_watch}")
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        observer.stop()
    observer.join()
