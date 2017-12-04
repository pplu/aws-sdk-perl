
package Paws::CodeDeploy::PutLifecycleEventHookExecutionStatusOutput;
  use Moose;
  has LifecycleEventHookExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecycleEventHookExecutionId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::PutLifecycleEventHookExecutionStatusOutput

=head1 ATTRIBUTES


=head2 LifecycleEventHookExecutionId => Str

The execution ID of the lifecycle event hook. A hook is specified in
the C<hooks> section of the deployment's AppSpec file.


=head2 _request_id => Str


=cut

1;