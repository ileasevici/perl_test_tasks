use strict;
use warnings;
use lib "./";
use Cat;

my %animal = (
    kind => 'cat',
    name => 'Pirat',
    age => 5,
    type => 'domestic'
);

my $object = bless \%animal, 'Animal';

# вызовы к родительскому классу
my $result_get_name = $object->get_name;
my $result_set_name = $object->set_name('Rijik');

# вызовы к дочернему классу
my $result_cat_set_name = $object->Cat::set_name("Bonya");