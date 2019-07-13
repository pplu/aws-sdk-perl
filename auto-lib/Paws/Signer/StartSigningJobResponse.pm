
package Paws::Signer::StartSigningJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::StartSigningJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The ID of your signing job.


=head2 _request_id => Str


=cut

