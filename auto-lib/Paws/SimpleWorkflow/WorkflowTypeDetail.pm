# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::WorkflowTypeDetail;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowTypeInfo SimpleWorkflow_WorkflowTypeConfiguration/;
  has Configuration => (is => 'ro', isa => SimpleWorkflow_WorkflowTypeConfiguration, required => 1);
  has TypeInfo => (is => 'ro', isa => SimpleWorkflow_WorkflowTypeInfo, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Configuration' => {
                                    'class' => 'Paws::SimpleWorkflow::WorkflowTypeConfiguration',
                                    'type' => 'SimpleWorkflow_WorkflowTypeConfiguration'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TypeInfo' => {
                               'class' => 'Paws::SimpleWorkflow::WorkflowTypeInfo',
                               'type' => 'SimpleWorkflow_WorkflowTypeInfo'
                             }
             },
  'NameInRequest' => {
                       'Configuration' => 'configuration',
                       'TypeInfo' => 'typeInfo'
                     },
  'IsRequired' => {
                    'Configuration' => 1,
                    'TypeInfo' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowTypeDetail

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => SimpleWorkflow_WorkflowTypeConfiguration

Configuration settings of the workflow type registered through
RegisterWorkflowType


=head2 B<REQUIRED> TypeInfo => SimpleWorkflow_WorkflowTypeInfo

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