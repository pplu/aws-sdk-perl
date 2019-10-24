# Generated from default/object.tt
package Paws::SimpleWorkflow::WorkflowTypeInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_WorkflowType/;
  has CreationDate => (is => 'ro', isa => Str, required => 1);
  has DeprecationDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str, required => 1);
  has WorkflowType => (is => 'ro', isa => SimpleWorkflow_WorkflowType, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WorkflowType' => {
                                   'class' => 'Paws::SimpleWorkflow::WorkflowType',
                                   'type' => 'SimpleWorkflow_WorkflowType'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'DeprecationDate' => {
                                      'type' => 'Str'
                                    },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'WorkflowType' => 'workflowType',
                       'Status' => 'status',
                       'CreationDate' => 'creationDate',
                       'DeprecationDate' => 'deprecationDate',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'WorkflowType' => 1,
                    'Status' => 1,
                    'CreationDate' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowTypeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowTypeInfo object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., WorkflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowTypeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

Contains information about a workflow type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationDate => Str

  The date when this type was registered.


=head2 DeprecationDate => Str

  If the type is in deprecated state, then it is set to the date when the
type was deprecated.


=head2 Description => Str

  The description of the type registered through RegisterWorkflowType.


=head2 B<REQUIRED> Status => Str

  The current status of the workflow type.


=head2 B<REQUIRED> WorkflowType => SimpleWorkflow_WorkflowType

  The workflow type this information is about.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

