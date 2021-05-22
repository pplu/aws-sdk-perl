
package Paws::GlueDataBrew::ListJobsResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::GlueDataBrew::Job]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Jobs => ArrayRef[L<Paws::GlueDataBrew::Job>]

A list of jobs that are defined.


=head2 NextToken => Str

A token that you can use in a subsequent call to retrieve the next set
of results.


=head2 _request_id => Str


=cut

