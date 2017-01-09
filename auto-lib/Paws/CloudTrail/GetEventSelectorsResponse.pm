
package Paws::CloudTrail::GetEventSelectorsResponse;
  use Moose;
  has EventSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::EventSelector]');
  has TrailARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetEventSelectorsResponse

=head1 ATTRIBUTES


=head2 EventSelectors => ArrayRef[L<Paws::CloudTrail::EventSelector>]

The event selectors that are configured for the trail.


=head2 TrailARN => Str

The specified trail ARN that has the event selectors.


=head2 _request_id => Str


=cut

1;