package Paws::SimpleWorkflow::WorkflowTypeInfo;
  use Moose;
  has creationDate => (is => 'ro', isa => 'Str', required => 1);
  has deprecationDate => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str', required => 1);
  has workflowType => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowType', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowTypeInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowTypeInfo object:

  $service_obj->Method(Att1 => { creationDate => $value, ..., workflowType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowTypeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->creationDate

=head1 ATTRIBUTES

=head2 B<REQUIRED> creationDate => Str

  

The date when this type was registered.










=head2 deprecationDate => Str

  

If the type is in deprecated state, then it is set to the date when the
type was deprecated.










=head2 description => Str

  

The description of the type registered through RegisterWorkflowType.










=head2 B<REQUIRED> status => Str

  

The current status of the workflow type.










=head2 B<REQUIRED> workflowType => Paws::SimpleWorkflow::WorkflowType

  

The workflow type this information is about.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

