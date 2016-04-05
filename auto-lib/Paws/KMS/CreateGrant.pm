
package Paws::KMS::CreateGrant;
  use Moose;
  has Constraints => (is => 'ro', isa => 'Paws::KMS::GrantConstraints');
  has GranteePrincipal => (is => 'ro', isa => 'Str', required => 1);
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Operations => (is => 'ro', isa => 'ArrayRef[Str]');
  has RetiringPrincipal => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGrant');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::CreateGrantResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateGrant - Arguments for method CreateGrant on Paws::KMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGrant on the 
AWS Key Management Service service. Use the attributes of this class
as arguments to method CreateGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGrant.

As an example:

  $service_obj->CreateGrant(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Constraints => L<Paws::KMS::GrantConstraints>

The conditions under which the operations permitted by the grant are
allowed.

You can use this value to allow the operations permitted by the grant
only when a specified encryption context is present. For more
information, see Encryption Context in the I<AWS Key Management Service
Developer Guide>.



=head2 B<REQUIRED> GranteePrincipal => Str

The principal that is given permission to perform the operations that
the grant permits.

To specify the principal, use the Amazon Resource Name (ARN) of an AWS
principal. Valid AWS principals include AWS accounts (root), IAM users,
federated users, and assumed role users. For examples of the ARN syntax
to use for specifying a principal, see AWS Identity and Access
Management (IAM) in the Example ARNs section of the I<AWS General
Reference>.



=head2 GrantTokens => ArrayRef[Str]

A list of grant tokens.

For more information, go to Grant Tokens in the I<AWS Key Management
Service Developer Guide>.



=head2 B<REQUIRED> KeyId => Str

The unique identifier for the customer master key (CMK) that the grant
applies to.

To specify this value, use the globally unique key ID or the Amazon
Resource Name (ARN) of the key. Examples:

=over

=item * Globally unique key ID: 12345678-1234-1234-1234-123456789012

=item * Key ARN:
arn:aws:kms:us-west-2:123456789012:key/12345678-1234-1234-1234-123456789012

=back




=head2 Name => Str

A friendly name for identifying the grant. Use this value to prevent
unintended creation of duplicate grants when retrying this request.

When this value is absent, all C<CreateGrant> requests result in a new
grant with a unique C<GrantId> even if all the supplied parameters are
identical. This can result in unintended duplicates when you retry the
C<CreateGrant> request.

When this value is present, you can retry a C<CreateGrant> request with
identical parameters; if the grant already exists, the original
C<GrantId> is returned without creating a new grant. Note that the
returned grant token is unique with every C<CreateGrant> request, even
when a duplicate C<GrantId> is returned. All grant tokens obtained in
this way can be used interchangeably.



=head2 Operations => ArrayRef[Str]

A list of operations that the grant permits. The list can contain any
combination of one or more of the following values:

=over

=item * Decrypt

=item * Encrypt

=item * GenerateDataKey

=item * GenerateDataKeyWithoutPlaintext

=item * ReEncryptFrom

=item * ReEncryptTo

=item * CreateGrant

=item * RetireGrant

=back




=head2 RetiringPrincipal => Str

The principal that is given permission to retire the grant by using
RetireGrant operation.

To specify the principal, use the Amazon Resource Name (ARN) of an AWS
principal. Valid AWS principals include AWS accounts (root), IAM users,
federated users, and assumed role users. For examples of the ARN syntax
to use for specifying a principal, see AWS Identity and Access
Management (IAM) in the Example ARNs section of the I<AWS General
Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGrant in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

