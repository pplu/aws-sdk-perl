
package Paws::CloudTrail::PutEventSelectorsResponse;
  use Moose;
  has EventSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::EventSelector]');
  has TrailARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::PutEventSelectorsResponse

=head1 ATTRIBUTES


=head2 EventSelectors => ArrayRef[L<Paws::CloudTrail::EventSelector>]

Specifies the event selectors configured for your trail.


=head2 TrailARN => Str

Specifies the ARN of the trail that was updated with event selectors.
The format of a trail ARN is:

C<arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail>


=head2 _request_id => Str


=cut

1;