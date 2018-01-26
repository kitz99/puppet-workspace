class prefs::config inherits prefs {
    notify{'Print prefs':
        message => "
            FAV color ${color}
            FAV car   ${car}
        "
    }
}