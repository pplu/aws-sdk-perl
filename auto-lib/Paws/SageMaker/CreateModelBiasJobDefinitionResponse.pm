
package Paws::SageMaker::CreateModelBiasJobDefinitionResponse;
  use Moose;
  has JobDefinitionArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateModelBiasJobDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobDefinitionArn => Str

The Amazon Resource Name (ARN) of the model bias job.


=head2 _request_id => Str


=cut

1;