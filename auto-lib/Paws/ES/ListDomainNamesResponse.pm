
package Paws::ES::ListDomainNamesResponse;
  use Moose;
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Paws::ES::DomainInfo]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListDomainNamesResponse

=head1 ATTRIBUTES


=head2 DomainNames => ArrayRef[L<Paws::ES::DomainInfo>]

List of Elasticsearch domain names.


=head2 _request_id => Str


=cut

