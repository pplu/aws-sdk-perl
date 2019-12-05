
package Paws::SageMaker::CreateFlowDefinitionResponse;
  use Moose;
  has FlowDefinitionArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateFlowDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowDefinitionArn => Str

The Amazon Resource Name (ARN) of the flow definition you create.


=head2 _request_id => Str


=cut

1;