
package Paws::CloudSearch::DescribeDomainEndpointOptionsResponse;
  use Moose;
  has DomainEndpointOptions => (is => 'ro', isa => 'Paws::CloudSearch::DomainEndpointOptionsStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeDomainEndpointOptionsResponse

=head1 ATTRIBUTES


=head2 DomainEndpointOptions => L<Paws::CloudSearch::DomainEndpointOptionsStatus>

The status and configuration of a search domain's endpoint options.


=head2 _request_id => Str


=cut

