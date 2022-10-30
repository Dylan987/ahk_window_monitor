from AHKLogParser import AHKLogParser

if __name__ == '__main__':

    LOG_FILE = "results.txt"

    parser = AHKLogParser(LOG_FILE)

    time_tracker =  {
        "active": True,
        "classification": ['any', ['discord', 'entertainment', 'other']],
    }

    for category, count in parser.count_by_classifications(time_tracker).items():
        print(f"{category}: {count}, {count / 60}")
        
    