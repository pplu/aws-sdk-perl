
package Paws::CloudSearch::UpdateDomainEndpointOptionsResponse;
  use Moose;
  has DomainEndpointOptions => (is => 'ro', isa => 'Paws::CloudSearch::DomainEndpointOptionsStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::UpdateDomainEndpointOptionsResponse

=head1 ATTRIBUTES


=head2 DomainEndpointOptions => L<Paws::CloudSearch::DomainEndpointOptionsStatus>

The newly-configured domain endpoint options.


=head2 _request_id => Str


=cut

