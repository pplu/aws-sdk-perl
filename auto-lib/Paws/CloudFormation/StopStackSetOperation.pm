
package Paws::CloudFormation::StopStackSetOperation;
  use Moose;
  has CallAs => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str', required => 1);
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopStackSetOperation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::StopStackSetOperationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StopStackSetOperationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StopStackSetOperation - Arguments for method StopStackSetOperation on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopStackSetOperation on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method StopStackSetOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopStackSetOperation.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $StopStackSetOperationOutput = $cloudformation->StopStackSetOperation(
      OperationId  => 'MyClientRequestToken',
      StackSetName => 'MyStackSetName',
      CallAs       => 'SELF',                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/StopStackSetOperation>

=head1 ATTRIBUTES


=head2 CallAs => Str

[Service-managed permissions] Specifies whether you are acting as an
account administrator in the organization's management account or as a
delegated administrator in a member account.

By default, C<SELF> is specified. Use C<SELF> for stack sets with
self-managed permissions.

=over

=item *

If you are signed in to the management account, specify C<SELF>.

=item *

If you are signed in to a delegated administrator account, specify
C<DELEGATED_ADMIN>.

Your AWS account must be registered as a delegated administrator in the
management account. For more information, see Register a delegated
administrator
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html)
in the I<AWS CloudFormation User Guide>.

=back


Valid values are: C<"SELF">, C<"DELEGATED_ADMIN">

=head2 B<REQUIRED> OperationId => Str

The ID of the stack operation.



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to stop the
operation for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopStackSetOperation in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

