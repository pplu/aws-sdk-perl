
package Paws::Batch::SubmitJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has JobName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::SubmitJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The unique identifier for the job.


=head2 B<REQUIRED> JobName => Str

The name of the job.


=head2 _request_id => Str


=cut

