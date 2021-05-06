
package Paws::CloudTrail::ListTrailsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Trails => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::TrailInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListTrailsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next page of results after a previous API
call. If the token does not appear, there are no more results to
return. The token must be passed in with the same parameters as the
previous call. For example, if the original call specified an
AttributeKey of 'Username' with a value of 'root', the call with
NextToken should include those same parameters.


=head2 Trails => ArrayRef[L<Paws::CloudTrail::TrailInfo>]

Returns the name, ARN, and home region of trails in the current
account.


=head2 _request_id => Str


=cut

1;