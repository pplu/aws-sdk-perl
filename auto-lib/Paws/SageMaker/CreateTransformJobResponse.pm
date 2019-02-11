
package Paws::SageMaker::CreateTransformJobResponse;
  use Moose;
  has TransformJobArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateTransformJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TransformJobArn => Str

The Amazon Resource Name (ARN) of the transform job.


=head2 _request_id => Str


=cut

1;