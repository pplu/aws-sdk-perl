
package Paws::Glacier::ListJobsOutput;
  use Moose;
  has JobList => (is => 'ro', isa => 'ArrayRef[Paws::Glacier::GlacierJobDescription]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListJobsOutput

=head1 ATTRIBUTES


=head2 JobList => ArrayRef[L<Paws::Glacier::GlacierJobDescription>]

A list of job objects. Each job object contains metadata describing the
job.


=head2 Marker => Str

An opaque string used for pagination that specifies the job at which
the listing of jobs should begin. You get the C<marker> value from a
previous List Jobs response. You only need to include the marker if you
are continuing the pagination of the results started in a previous List
Jobs request.


=head2 _request_id => Str


=cut

