
package Paws::ApiGateway::DomainNames;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::DomainName]');
  has Position => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DomainNames

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::DomainName>]

  The current page of any DomainName resources in the collection of
DomainName resources.

=head2 Position => Str

  


=cut

