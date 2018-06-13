
package Paws::CloudFormation::DeleteChangeSet;
  use Moose;
  has ChangeSetName => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChangeSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DeleteChangeSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteChangeSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DeleteChangeSet - Arguments for method DeleteChangeSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChangeSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DeleteChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChangeSet.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DeleteChangeSetOutput = $cloudformation->DeleteChangeSet(
      ChangeSetName => 'MyChangeSetNameOrId',
      StackName     => 'MyStackNameOrId',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DeleteChangeSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeSetName => Str

The name or Amazon Resource Name (ARN) of the change set that you want
to delete.



=head2 StackName => Str

If you specified the name of a change set to delete, specify the stack
name or ID (ARN) that is associated with it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChangeSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

