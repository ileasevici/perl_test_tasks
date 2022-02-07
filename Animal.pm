use strict;
use warnings;

package Animal;

sub get_name {
    my ($self, $args) = @_ ;

    return $self->{name};
}

sub set_name {
    my ( $self, $name ) = @_;
    $self->{name} = $name if defined($name);

    return $self->{name};
}

1;