
package Paws::SageMaker::CreateModelQualityJobDefinitionResponse;
  use Moose;
  has JobDefinitionArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelQualityJobDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobDefinitionArn => Str

The Amazon Resource Name (ARN) of the model quality monitoring job.


=head2 _request_id => Str


=cut

1;