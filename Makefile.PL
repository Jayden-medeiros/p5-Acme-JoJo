use inc::Module::Install;
name 'Acme-JoJo';
all_from 'lib/Acme/JoJo.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
