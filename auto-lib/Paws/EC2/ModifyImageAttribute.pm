
package Paws::EC2::ModifyImageAttribute;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Paws::EC2::AttributeValue');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchPermission => (is => 'ro', isa => 'Paws::EC2::LaunchPermissionModifications');
  has OperationType => (is => 'ro', isa => 'Str');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ProductCode' );
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'UserGroup' );
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'UserId' );
  has Value => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyImageAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyImageAttribute - Arguments for method ModifyImageAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyImageAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyImageAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyImageAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    $ec2->ModifyImageAttribute(
      ImageId          => 'MyString',
      Attribute        => 'MyString',                  # OPTIONAL
      Description      => { Value => 'MyString', },    # OPTIONAL
      DryRun           => 1,                           # OPTIONAL
      LaunchPermission => {
        Add => [
          {
            Group  => 'all',                           # values: all; OPTIONAL
            UserId => 'MyString',
          },
          ...
        ],                                             # OPTIONAL
        Remove => [
          {
            Group  => 'all',                           # values: all; OPTIONAL
            UserId => 'MyString',
          },
          ...
        ],                                             # OPTIONAL
      },    # OPTIONAL
      OperationType => 'add',                  # OPTIONAL
      ProductCodes  => [ 'MyString', ... ],    # OPTIONAL
      UserGroups    => [ 'MyString', ... ],    # OPTIONAL
      UserIds       => [ 'MyString', ... ],    # OPTIONAL
      Value         => 'MyString',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyImageAttribute>

=head1 ATTRIBUTES


=head2 Attribute => Str

The name of the attribute to modify. The valid values are
C<description>, C<launchPermission>, and C<productCodes>.



=head2 Description => L<Paws::EC2::AttributeValue>

A new description for the AMI.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> ImageId => Str

The ID of the AMI.



=head2 LaunchPermission => L<Paws::EC2::LaunchPermissionModifications>

A new launch permission for the AMI.



=head2 OperationType => Str

The operation type. This parameter can be used only when the
C<Attribute> parameter is C<launchPermission>.

Valid values are: C<"add">, C<"remove">

=head2 ProductCodes => ArrayRef[Str|Undef]

One or more DevPay product codes. After you add a product code to an
AMI, it can't be removed.



=head2 UserGroups => ArrayRef[Str|Undef]

One or more user groups. This parameter can be used only when the
C<Attribute> parameter is C<launchPermission>.



=head2 UserIds => ArrayRef[Str|Undef]

One or more AWS account IDs. This parameter can be used only when the
C<Attribute> parameter is C<launchPermission>.



=head2 Value => Str

The value of the attribute being modified. This parameter can be used
only when the C<Attribute> parameter is C<description> or
C<productCodes>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyImageAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

