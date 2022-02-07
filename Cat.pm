use strict;
use warnings;
use Animal;

package Cat;
use base 'Animal';

sub set_name {
    my ( $self, $name ) = @_;
    if ($self->{name} eq $name) {
        print "Уже добавлен!\n";
        return;
    };

    return $self->SUPER::set_name($name);
}

1;