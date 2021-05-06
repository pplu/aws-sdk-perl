
package Paws::CodeStarNotifications::ListTargetsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::CodeStarNotifications::TargetSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListTargetsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of results.


=head2 Targets => ArrayRef[L<Paws::CodeStarNotifications::TargetSummary>]

The list of notification rule targets.


=head2 _request_id => Str


=cut

