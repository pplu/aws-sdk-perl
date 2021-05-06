
package Paws::MediaPackage::ListOriginEndpointsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OriginEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackage::OriginEndpoint]', traits => ['NameInRequest'], request_name => 'originEndpoints');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::ListOriginEndpointsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to resume pagination from the end of the
collection.


=head2 OriginEndpoints => ArrayRef[L<Paws::MediaPackage::OriginEndpoint>]

A list of OriginEndpoint records.


=head2 _request_id => Str


=cut

