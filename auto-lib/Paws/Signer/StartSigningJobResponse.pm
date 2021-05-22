
package Paws::Signer::StartSigningJobResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has JobOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobOwner');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::StartSigningJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The ID of your signing job.


=head2 JobOwner => Str

The AWS account ID of the signing job owner.


=head2 _request_id => Str


=cut

