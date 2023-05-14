CREATE OR REPLACE FUNCTION idade(data_nascimento DATE)
RETURNS INTEGER AS $$
BEGIN
  RETURN extract(year FROM age(data_nascimento));
END;
$$ LANGUAGE plpgsql;

