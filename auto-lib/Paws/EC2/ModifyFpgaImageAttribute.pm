
package Paws::EC2::ModifyFpgaImageAttribute;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has FpgaImageId => (is => 'ro', isa => 'Str', required => 1);
  has LoadPermission => (is => 'ro', isa => 'Paws::EC2::LoadPermissionModifications');
  has Name => (is => 'ro', isa => 'Str');
  has OperationType => (is => 'ro', isa => 'Str');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ProductCode' );
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'UserGroup' );
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'UserId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyFpgaImageAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyFpgaImageAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyFpgaImageAttribute - Arguments for method ModifyFpgaImageAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyFpgaImageAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyFpgaImageAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyFpgaImageAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyFpgaImageAttributeResult = $ec2->ModifyFpgaImageAttribute(
      FpgaImageId    => 'MyString',
      Attribute      => 'description',    # OPTIONAL
      Description    => 'MyString',       # OPTIONAL
      DryRun         => 1,                # OPTIONAL
      LoadPermission => {
        Add => [
          {
            Group  => 'all',              # values: all; OPTIONAL
            UserId => 'MyString',
          },
          ...
        ],                                # OPTIONAL
        Remove => [
          {
            Group  => 'all',              # values: all; OPTIONAL
            UserId => 'MyString',
          },
          ...
        ],                                # OPTIONAL
      },    # OPTIONAL
      Name          => 'MyString',             # OPTIONAL
      OperationType => 'add',                  # OPTIONAL
      ProductCodes  => [ 'MyString', ... ],    # OPTIONAL
      UserGroups    => [ 'MyString', ... ],    # OPTIONAL
      UserIds       => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $FpgaImageAttribute =
      $ModifyFpgaImageAttributeResult->FpgaImageAttribute;

    # Returns a L<Paws::EC2::ModifyFpgaImageAttributeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyFpgaImageAttribute>

=head1 ATTRIBUTES


=head2 Attribute => Str

The name of the attribute.

Valid values are: C<"description">, C<"name">, C<"loadPermission">, C<"productCodes">

=head2 Description => Str

A description for the AFI.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> FpgaImageId => Str

The ID of the AFI.



=head2 LoadPermission => L<Paws::EC2::LoadPermissionModifications>

The load permission for the AFI.



=head2 Name => Str

A name for the AFI.



=head2 OperationType => Str

The operation type.

Valid values are: C<"add">, C<"remove">

=head2 ProductCodes => ArrayRef[Str|Undef]

One or more product codes. After you add a product code to an AFI, it
can't be removed. This parameter is valid only when modifying the
C<productCodes> attribute.



=head2 UserGroups => ArrayRef[Str|Undef]

One or more user groups. This parameter is valid only when modifying
the C<loadPermission> attribute.



=head2 UserIds => ArrayRef[Str|Undef]

One or more AWS account IDs. This parameter is valid only when
modifying the C<loadPermission> attribute.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyFpgaImageAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

