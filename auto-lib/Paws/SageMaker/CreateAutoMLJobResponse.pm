
package Paws::SageMaker::CreateAutoMLJobResponse;
  use Moose;
  has AutoMLJobArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAutoMLJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoMLJobArn => Str

When a job is created, it is assigned a unique ARN.


=head2 _request_id => Str


=cut

1;