
package Paws::CloudFormation::DeleteStackSet;
  use Moose;
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStackSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DeleteStackSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteStackSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DeleteStackSet - Arguments for method DeleteStackSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStackSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DeleteStackSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStackSet.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DeleteStackSetOutput = $cloudformation->DeleteStackSet(
      StackSetName => 'MyStackSetName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DeleteStackSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you're deleting. You can
obtain this value by running ListStackSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStackSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

