
package Paws::CloudSearch::ListDomainNamesResponse;
  use Moose;
  has DomainNames => (is => 'ro', isa => 'HashRef[Str]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::ListDomainNamesResponse

=head1 ATTRIBUTES


=head2 DomainNames => HashRef[Str]

The names of the search domains owned by an account.




=cut

