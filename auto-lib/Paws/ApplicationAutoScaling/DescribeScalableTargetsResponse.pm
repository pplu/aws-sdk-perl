
package Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ScalableTargets => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::ScalableTarget]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<NextToken> value to include in a future
C<DescribeScalableTargets> request. When the results of a
C<DescribeScalableTargets> request exceed C<MaxResults>, this value can
be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 ScalableTargets => ArrayRef[L<Paws::ApplicationAutoScaling::ScalableTarget>]

The list of scalable targets that matches the request parameters.


=head2 _request_id => Str


=cut

1;