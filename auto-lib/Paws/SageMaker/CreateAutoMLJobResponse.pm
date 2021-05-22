
package Paws::SageMaker::CreateAutoMLJobResponse;
  use Moose;
  has AutoMLJobArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAutoMLJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoMLJobArn => Str

The unique ARN that is assigned to the AutoML job when it is created.


=head2 _request_id => Str


=cut

1;