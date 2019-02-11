
package Paws::MediaConnect::AddFlowOutputsResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::Output]', traits => ['NameInRequest'], request_name => 'outputs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddFlowOutputsResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that these outputs were added to.


=head2 Outputs => ArrayRef[L<Paws::MediaConnect::Output>]

The details of the newly added outputs.


=head2 _request_id => Str


=cut

