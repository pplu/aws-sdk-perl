
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




=head2 Trails => ArrayRef[L<Paws::CloudTrail::TrailInfo>]

Returns the name, ARN, and home region of trails in the current
account.


=head2 _request_id => Str


=cut

1;