
package Paws::ES::ListDomainNamesResponse;
  use Moose;
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Paws::ES::DomainInfo]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListDomainNamesResponse

=head1 ATTRIBUTES

=head2 DomainNames => ArrayRef[L<Paws::ES::DomainInfo>]

  List of Elasticsearch domain names.


=cut

