
package Paws::Appflow::CreateFlowResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has FlowStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowStatus');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::CreateFlowResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The flow's Amazon Resource Name (ARN).


=head2 FlowStatus => Str

Indicates the current status of the flow.

Valid values are: C<"Active">, C<"Deprecated">, C<"Deleted">, C<"Draft">, C<"Errored">, C<"Suspended">
=head2 _request_id => Str


=cut

