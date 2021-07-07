
package Paws::RAM::AssociateResourceSharePermission;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PermissionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionArn', required => 1);
  has PermissionVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'permissionVersion');
  has Replace => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'replace');
  has ResourceShareArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateResourceSharePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/associateresourcesharepermission');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::AssociateResourceSharePermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::AssociateResourceSharePermission - Arguments for method AssociateResourceSharePermission on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateResourceSharePermission on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method AssociateResourceSharePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateResourceSharePermission.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $AssociateResourceSharePermissionResponse =
      $ram->AssociateResourceSharePermission(
      PermissionArn     => 'MyString',
      ResourceShareArn  => 'MyString',
      ClientToken       => 'MyString',    # OPTIONAL
      PermissionVersion => 1,             # OPTIONAL
      Replace           => 1,             # OPTIONAL
      );

    # Results:
    my $ClientToken = $AssociateResourceSharePermissionResponse->ClientToken;
    my $ReturnValue = $AssociateResourceSharePermissionResponse->ReturnValue;

    # Returns a L<Paws::RAM::AssociateResourceSharePermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/AssociateResourceSharePermission>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> PermissionArn => Str

The Amazon Resource Name (ARN) of the AWS RAM permissions to associate
with the resource share.



=head2 PermissionVersion => Int

The version of the AWS RAM permissions to associate with the resource
share.



=head2 Replace => Bool

Indicates whether the permission should replace the permissions that
are currently associated with the resource share. Use C<true> to
replace the current permissions. Use C<false> to add the permission to
the current permission.



=head2 B<REQUIRED> ResourceShareArn => Str

The Amazon Resource Name (ARN) of the resource share.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateResourceSharePermission in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

