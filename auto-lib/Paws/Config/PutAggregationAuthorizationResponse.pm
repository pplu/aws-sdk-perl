
package Paws::Config::PutAggregationAuthorizationResponse;
  use Moose;
  has AggregationAuthorization => (is => 'ro', isa => 'Paws::Config::AggregationAuthorization');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutAggregationAuthorizationResponse

=head1 ATTRIBUTES


=head2 AggregationAuthorization => L<Paws::Config::AggregationAuthorization>

Returns an AggregationAuthorization object.


=head2 _request_id => Str


=cut

1;