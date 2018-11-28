
package Paws::MediaConnect::UpdateFlowOutputResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has Output => (is => 'ro', isa => 'Paws::MediaConnect::Output', traits => ['NameInRequest'], request_name => 'output');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowOutputResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that is associated with the updated output.


=head2 Output => L<Paws::MediaConnect::Output>




=head2 _request_id => Str


=cut

