CREATE TABLE IF NOT EXISTS public.user (
    id SERIAL PRIMARY KEY,
    user_name TEXT NOT NULL,
    user_surname TEXT NOT NULL,
    login TEXT UNIQUE NOT NULL,
    pass TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS public.messages (
    id SERIAL PRIMARY KEY,
    message TEXT NOT NULL,
    from_name_id INTEGER REFERENCES public.user(id),
    to_name_id INTEGER REFERENCES public.user(id)
);
