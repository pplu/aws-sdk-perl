
package Paws::OpsWorks::DescribePermissions;
  use Moose;
  has IamUserArn => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribePermissionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribePermissions - Arguments for method DescribePermissions on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePermissions on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method DescribePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePermissions.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $DescribePermissionsResult = $opsworks->DescribePermissions(
      IamUserArn => 'MyString',    # OPTIONAL
      StackId    => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Permissions = $DescribePermissionsResult->Permissions;

    # Returns a L<Paws::OpsWorks::DescribePermissionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/DescribePermissions>

=head1 ATTRIBUTES


=head2 IamUserArn => Str

The user's IAM ARN. This can also be a federated user's ARN. For more
information about IAM ARNs, see Using Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).



=head2 StackId => Str

The stack ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePermissions in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

