
package Paws::KMS::CreateKey;
  use Moose;
  has BypassPolicyLockoutSafetyCheck => (is => 'ro', isa => 'Bool');
  has CustomKeyStoreId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KeyUsage => (is => 'ro', isa => 'Str');
  has Origin => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::CreateKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateKey - Arguments for method CreateKey on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKey on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method CreateKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKey.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To create a customer master key (CMK)
    # The following example creates a CMK.
    my $CreateKeyResponse = $kms->CreateKey();

    # Results:
    my $KeyMetadata = $CreateKeyResponse->KeyMetadata;

    # Returns a L<Paws::KMS::CreateKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/CreateKey>

=head1 ATTRIBUTES


=head2 BypassPolicyLockoutSafetyCheck => Bool

A flag to indicate whether to bypass the key policy lockout safety
check.

Setting this value to true increases the risk that the CMK becomes
unmanageable. Do not set this value to true indiscriminately.

For more information, refer to the scenario in the Default Key Policy
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam)
section in the I<AWS Key Management Service Developer Guide>.

Use this parameter only when you include a policy in the request and
you intend to prevent the principal that is making the request from
making a subsequent PutKeyPolicy request on the CMK.

The default value is false.



=head2 CustomKeyStoreId => Str

Creates the CMK in the specified custom key store
(http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html)
and the key material in its associated AWS CloudHSM cluster. To create
a CMK in a custom key store, you must also specify the C<Origin>
parameter with a value of C<AWS_CLOUDHSM>. The AWS CloudHSM cluster
that is associated with the custom key store must have at least two
active HSMs, each in a different Availability Zone in the Region.

To find the ID of a custom key store, use the DescribeCustomKeyStores
operation.

The response includes the custom key store ID and the ID of the AWS
CloudHSM cluster.

This operation is part of the Custom Key Store feature
(http://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in AWS KMS, which combines the convenience and extensive
integration of AWS KMS with the isolation and control of a
single-tenant key store.



=head2 Description => Str

A description of the CMK.

Use a description that helps you decide whether the CMK is appropriate
for a task.



=head2 KeyUsage => Str

The intended use of the CMK.

You can use CMKs only for symmetric encryption and decryption.

Valid values are: C<"ENCRYPT_DECRYPT">

=head2 Origin => Str

The source of the CMK's key material. You cannot change the origin
after you create the CMK.

The default is C<AWS_KMS>, which means AWS KMS creates the key material
in its own key store.

When the parameter value is C<EXTERNAL>, AWS KMS creates a CMK without
key material so that you can import key material from your existing key
management infrastructure. For more information about importing key
material into AWS KMS, see Importing Key Material
(http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<AWS Key Management Service Developer Guide>.

When the parameter value is C<AWS_CLOUDHSM>, AWS KMS creates the CMK in
a AWS KMS custom key store
(http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html)
and creates its key material in the associated AWS CloudHSM cluster.
You must also use the C<CustomKeyStoreId> parameter to identify the
custom key store.

Valid values are: C<"AWS_KMS">, C<"EXTERNAL">, C<"AWS_CLOUDHSM">

=head2 Policy => Str

The key policy to attach to the CMK.

If you provide a key policy, it must meet the following criteria:

=over

=item *

If you don't set C<BypassPolicyLockoutSafetyCheck> to true, the key
policy must allow the principal that is making the C<CreateKey> request
to make a subsequent PutKeyPolicy request on the CMK. This reduces the
risk that the CMK becomes unmanageable. For more information, refer to
the scenario in the Default Key Policy
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam)
section of the I<AWS Key Management Service Developer Guide>.

=item *

Each statement in the key policy must contain one or more principals.
The principals in the key policy must exist and be visible to AWS KMS.
When you create a new AWS principal (for example, an IAM user or role),
you might need to enforce a delay before including the new principal in
a key policy because the new principal might not be immediately visible
to AWS KMS. For more information, see Changes that I make are not
always immediately visible
(http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency)
in the I<AWS Identity and Access Management User Guide>.

=back

If you do not provide a key policy, AWS KMS attaches a default key
policy to the CMK. For more information, see Default Key Policy
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default)
in the I<AWS Key Management Service Developer Guide>.

The key policy size limit is 32 kilobytes (32768 bytes).



=head2 Tags => ArrayRef[L<Paws::KMS::Tag>]

One or more tags. Each tag consists of a tag key and a tag value. Tag
keys and tag values are both required, but tag values can be empty
(null) strings.

Use this parameter to tag the CMK when it is created. Alternately, you
can omit this parameter and instead tag the CMK after it is created
using TagResource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKey in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

