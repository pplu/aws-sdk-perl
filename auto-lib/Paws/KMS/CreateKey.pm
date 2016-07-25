
package Paws::KMS::CreateKey;
  use Moose;
  has BypassPolicyLockoutSafetyCheck => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has KeyUsage => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::CreateKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateKey - Arguments for method CreateKey on Paws::KMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKey on the 
AWS Key Management Service service. Use the attributes of this class
as arguments to method CreateKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKey.

As an example:

  $service_obj->CreateKey(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 BypassPolicyLockoutSafetyCheck => Bool

A flag to indicate whether to bypass the key policy lockout safety
check.

Setting this value to true increases the likelihood that the CMK
becomes unmanageable. Do not set this value to true indiscriminately.

For more information, refer to the scenario in the Default Key Policy
section in the I<AWS Key Management Service Developer Guide>.

Use this parameter only when you include a policy in the request and
you intend to prevent the principal making the request from making a
subsequent PutKeyPolicy request on the CMK.

The default value is false.



=head2 Description => Str

A description of the CMK.

Use a description that helps you decide whether the CMK is appropriate
for a task.



=head2 KeyUsage => Str

The intended use of the CMK.

You can use CMKs only for symmetric encryption and decryption.

Valid values are: C<"ENCRYPT_DECRYPT">

=head2 Policy => Str

The key policy to attach to the CMK.

If you specify a key policy, it must meet the following criteria:

=over

=item *

It must allow the principal making the C<CreateKey> request to make a
subsequent PutKeyPolicy request on the CMK. This reduces the likelihood
that the CMK becomes unmanageable. For more information, refer to the
scenario in the Default Key Policy section in the I<AWS Key Management
Service Developer Guide>.

=item *

The principal(s) specified in the key policy must exist and be visible
to AWS KMS. When you create a new AWS principal (for example, an IAM
user or role), you might need to enforce a delay before specifying the
new principal in a key policy because the new principal might not
immediately be visible to AWS KMS. For more information, see Changes
that I make are not always immediately visible in the I<IAM User
Guide>.

=back

If you do not specify a policy, AWS KMS attaches a default key policy
to the CMK. For more information, see Default Key Policy in the I<AWS
Key Management Service Developer Guide>.

The policy size limit is 32 KiB (32768 bytes).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKey in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

