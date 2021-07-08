
package Paws::Macie2::CreateClassificationJobResponse;
  use Moose;
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateClassificationJobResponse

=head1 ATTRIBUTES


=head2 JobArn => Str

The Amazon Resource Name (ARN) of the job.


=head2 JobId => Str

The unique identifier for the job.


=head2 _request_id => Str


=cut

