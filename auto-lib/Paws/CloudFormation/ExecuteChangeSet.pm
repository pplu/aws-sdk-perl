
package Paws::CloudFormation::ExecuteChangeSet;
  use Moose;
  has ChangeSetName => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteChangeSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ExecuteChangeSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ExecuteChangeSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ExecuteChangeSet - Arguments for method ExecuteChangeSet on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteChangeSet on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method ExecuteChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteChangeSet.

As an example:

  $service_obj->ExecuteChangeSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeSetName => Str

The name or ARN of the change set that you want use to update the
specified stack.



=head2 StackName => Str

If you specified the name of a change set, specify the stack name or ID
(ARN) that is associated with the change set you want to execute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteChangeSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

