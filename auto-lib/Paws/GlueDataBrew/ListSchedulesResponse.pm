
package Paws::GlueDataBrew::ListSchedulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Schedules => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Schedule]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListSchedulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that you can use in a subsequent call to retrieve the next set
of results.


=head2 B<REQUIRED> Schedules => ArrayRef[L<Paws::GlueDataBrew::Schedule>]

A list of schedules that are defined.


=head2 _request_id => Str


=cut

