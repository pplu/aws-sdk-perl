
package Paws::WorkDocs::DescribeActivitiesResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has UserActivities => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::Activity]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeActivitiesResponse

=head1 ATTRIBUTES


=head2 Marker => Str

The marker for the next set of results.


=head2 UserActivities => ArrayRef[L<Paws::WorkDocs::Activity>]

The list of activities for the specified user and time period.


=head2 _request_id => Str


=cut

