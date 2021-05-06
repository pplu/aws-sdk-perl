
package Paws::OpsWorks::DescribeStacks;
  use Moose;
  has StackIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeStacksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeStacks - Arguments for method DescribeStacks on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStacks on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DescribeStacks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStacks.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $DescribeStacksResult = $opsworks->DescribeStacks(
      StackIds => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Stacks = $DescribeStacksResult->Stacks;

    # Returns a L<Paws::OpsWorks::DescribeStacksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DescribeStacks>

=head1 ATTRIBUTES


=head2 StackIds => ArrayRef[Str|Undef]

An array of stack IDs that specify the stacks to be described. If you
omit this parameter, C<DescribeStacks> returns a description of every
stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStacks in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

