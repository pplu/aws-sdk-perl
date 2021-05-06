
package Paws::S3Control::ListJobsResult;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::JobListDescriptor]');
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListJobsResult

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::S3Control::JobListDescriptor>]

The list of current jobs and jobs that have ended within the last 30
days.



=head2 NextToken => Str

If the C<List Jobs> request produced more than the maximum number of
results, you can pass this value into a subsequent C<List Jobs> request
in order to retrieve the next page of results.




=cut

