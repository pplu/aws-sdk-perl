
package Paws::KMS::CreateGrant;
  use Moose;
  has Constraints => (is => 'ro', isa => 'Paws::KMS::GrantConstraints');
  has GranteePrincipal => (is => 'ro', isa => 'Str', required => 1);
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Operations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has RetiringPrincipal => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGrant');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::CreateGrantResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateGrant - Arguments for method CreateGrant on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGrant on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method CreateGrant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGrant.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
   # To create a grant
   # The following example creates a grant that allows the specified IAM role to
   # encrypt data with the specified customer master key (CMK).
    my $CreateGrantResponse = $kms->CreateGrant(
      'GranteePrincipal' => 'arn:aws:iam::111122223333:role/ExampleRole',
      'KeyId'            =>
'arn:aws:kms:us-east-2:444455556666:key/1234abcd-12ab-34cd-56ef-1234567890ab',
      'Operations' => [ 'Encrypt', 'Decrypt' ]
    );

    # Results:
    my $GrantId    = $CreateGrantResponse->GrantId;
    my $GrantToken = $CreateGrantResponse->GrantToken;

    # Returns a L<Paws::KMS::CreateGrantResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/CreateGrant>

=head1 ATTRIBUTES


=head2 Constraints => L<Paws::KMS::GrantConstraints>

Specifies a grant constraint.

AWS KMS supports the C<EncryptionContextEquals> and
C<EncryptionContextSubset> grant constraints. Each constraint value can
include up to 8 encryption context pairs. The encryption context value
in each constraint cannot exceed 384 characters.

These grant constraints allow a cryptographic operation
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#cryptographic-operations)
only when the encryption context in the request matches
(C<EncryptionContextEquals>) or includes (C<EncryptionContextSubset>)
the encryption context specified in this structure. For more
information about encryption context, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I< I<AWS Key Management Service Developer Guide> >. For
information about grant constraints, see Using grant constraints
(https://docs.aws.amazon.com/kms/latest/developerguide/create-grant-overview.html#grant-constraints)
in the I<AWS Key Management Service Developer Guide>.

The encryption context grant constraints are supported only on
operations that include an encryption context. You cannot use an
encryption context grant constraint for cryptographic operations with
asymmetric CMKs or for management operations, such as DescribeKey or
RetireGrant.



=head2 B<REQUIRED> GranteePrincipal => Str

The identity that gets the permissions specified in the grant.

To specify the principal, use the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of an AWS principal. Valid AWS principals include AWS accounts (root),
IAM users, IAM roles, federated users, and assumed role users. For
examples of the ARN syntax to use for specifying a principal, see AWS
Identity and Access Management (IAM)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam)
in the Example ARNs section of the I<AWS General Reference>.



=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

Use a grant token when your permission to call this operation comes
from a new grant that has not yet achieved I<eventual consistency>. For
more information, see Grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#grant_token)
in the I<AWS Key Management Service Developer Guide>.



=head2 B<REQUIRED> KeyId => Str

Identifies the customer master key (CMK) for the grant. The grant gives
principals permission to use this CMK.

Specify the key ID or key ARN of the CMK. To specify a CMK in a
different AWS account, you must use the key ARN.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.



=head2 Name => Str

A friendly name for the grant. Use this value to prevent the unintended
creation of duplicate grants when retrying this request.

When this value is absent, all C<CreateGrant> requests result in a new
grant with a unique C<GrantId> even if all the supplied parameters are
identical. This can result in unintended duplicates when you retry the
C<CreateGrant> request.

When this value is present, you can retry a C<CreateGrant> request with
identical parameters; if the grant already exists, the original
C<GrantId> is returned without creating a new grant. Note that the
returned grant token is unique with every C<CreateGrant> request, even
when a duplicate C<GrantId> is returned. All grant tokens for the same
grant ID can be used interchangeably.



=head2 B<REQUIRED> Operations => ArrayRef[Str|Undef]

A list of operations that the grant permits.

The operation must be supported on the CMK. For example, you cannot
create a grant for a symmetric CMK that allows the Sign operation, or a
grant for an asymmetric CMK that allows the GenerateDataKey operation.
If you try, AWS KMS returns a C<ValidationError> exception. For
details, see Grant operations
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#terms-grant-operations)
in the I<AWS Key Management Service Developer Guide>.



=head2 RetiringPrincipal => Str

The principal that is given permission to retire the grant by using
RetireGrant operation.

To specify the principal, use the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of an AWS principal. Valid AWS principals include AWS accounts (root),
IAM users, federated users, and assumed role users. For examples of the
ARN syntax to use for specifying a principal, see AWS Identity and
Access Management (IAM)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-iam)
in the Example ARNs section of the I<AWS General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGrant in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

