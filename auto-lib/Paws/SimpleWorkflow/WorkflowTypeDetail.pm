
package Paws::SimpleWorkflow::WorkflowTypeDetail;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowTypeConfiguration', traits => ['NameInRequest'], request_name => 'configuration' , required => 1);
  has TypeInfo => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowTypeInfo', traits => ['NameInRequest'], request_name => 'typeInfo' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowTypeDetail

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::SimpleWorkflow::WorkflowTypeConfiguration>

Configuration settings of the workflow type registered through
RegisterWorkflowType


=head2 B<REQUIRED> TypeInfo => L<Paws::SimpleWorkflow::WorkflowTypeInfo>

General information about the workflow type.

The status of the workflow type (returned in the WorkflowTypeInfo
structure) can be one of the following.

=over

=item *

C<REGISTERED> E<ndash> The type is registered and available. Workers
supporting this type should be running.

=item *

C<DEPRECATED> E<ndash> The type was deprecated using
DeprecateWorkflowType, but is still in use. You should keep workers
supporting this type running. You cannot create new workflow executions
of this type.

=back



=head2 _request_id => Str


=cut

1;