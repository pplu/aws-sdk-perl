
package Paws::ECS::DescribeCapacityProvidersResponse;
  use Moose;
  has CapacityProviders => (is => 'ro', isa => 'ArrayRef[Paws::ECS::CapacityProvider]', traits => ['NameInRequest'], request_name => 'capacityProviders' );
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['NameInRequest'], request_name => 'failures' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeCapacityProvidersResponse

=head1 ATTRIBUTES


=head2 CapacityProviders => ArrayRef[L<Paws::ECS::CapacityProvider>]

The list of capacity providers.


=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<DescribeCapacityProviders> request. When the results of a
C<DescribeCapacityProviders> request exceed C<maxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

1;