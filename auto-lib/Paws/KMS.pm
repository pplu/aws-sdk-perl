
use Paws::API;


package Paws::KMS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'kms');
  has version => (is => 'ro', isa => 'Str', default => '2014-11-01');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'TrentService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub CreateAlias {
    my $self = shift;
    return $self->do_call('Paws::KMS::CreateAlias', @_);
  }
  sub CreateGrant {
    my $self = shift;
    return $self->do_call('Paws::KMS::CreateGrant', @_);
  }
  sub CreateKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::CreateKey', @_);
  }
  sub Decrypt {
    my $self = shift;
    return $self->do_call('Paws::KMS::Decrypt', @_);
  }
  sub DeleteAlias {
    my $self = shift;
    return $self->do_call('Paws::KMS::DeleteAlias', @_);
  }
  sub DescribeKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::DescribeKey', @_);
  }
  sub DisableKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::DisableKey', @_);
  }
  sub DisableKeyRotation {
    my $self = shift;
    return $self->do_call('Paws::KMS::DisableKeyRotation', @_);
  }
  sub EnableKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::EnableKey', @_);
  }
  sub EnableKeyRotation {
    my $self = shift;
    return $self->do_call('Paws::KMS::EnableKeyRotation', @_);
  }
  sub Encrypt {
    my $self = shift;
    return $self->do_call('Paws::KMS::Encrypt', @_);
  }
  sub GenerateDataKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::GenerateDataKey', @_);
  }
  sub GenerateDataKeyWithoutPlaintext {
    my $self = shift;
    return $self->do_call('Paws::KMS::GenerateDataKeyWithoutPlaintext', @_);
  }
  sub GenerateRandom {
    my $self = shift;
    return $self->do_call('Paws::KMS::GenerateRandom', @_);
  }
  sub GetKeyPolicy {
    my $self = shift;
    return $self->do_call('Paws::KMS::GetKeyPolicy', @_);
  }
  sub GetKeyRotationStatus {
    my $self = shift;
    return $self->do_call('Paws::KMS::GetKeyRotationStatus', @_);
  }
  sub ListAliases {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListAliases', @_);
  }
  sub ListGrants {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListGrants', @_);
  }
  sub ListKeyPolicies {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListKeyPolicies', @_);
  }
  sub ListKeys {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListKeys', @_);
  }
  sub PutKeyPolicy {
    my $self = shift;
    return $self->do_call('Paws::KMS::PutKeyPolicy', @_);
  }
  sub ReEncrypt {
    my $self = shift;
    return $self->do_call('Paws::KMS::ReEncrypt', @_);
  }
  sub RetireGrant {
    my $self = shift;
    return $self->do_call('Paws::KMS::RetireGrant', @_);
  }
  sub RevokeGrant {
    my $self = shift;
    return $self->do_call('Paws::KMS::RevokeGrant', @_);
  }
  sub UpdateKeyDescription {
    my $self = shift;
    return $self->do_call('Paws::KMS::UpdateKeyDescription', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS - Perl Interface to AWS AWS Key Management Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Key Management Service

AWS Key Management Service (KMS) is an encryption and key management
web service. This guide describes the KMS actions that you can call
programmatically. For general information about KMS, see (need an
address here). For the KMS developer guide, see (need address here).

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms (Java, Ruby, .Net, iOS, Android,
etc.). The SDKs provide a convenient way to create programmatic access
to KMS and AWS. For example, the SDKs take care of tasks such as
signing requests (see below), managing errors, and retrying requests
automatically. For more information about the AWS SDKs, including how
to download and install them, see Tools for Amazon Web Services.

We recommend that you use the AWS SDKs to make programmatic API calls
to KMS. However, you can also use the KMS Query API to make to make
direct calls to the KMS web service.

B<Signing Requests>

Requests must be signed by using an access key ID and a secret access
key. We strongly recommend that you do not use your AWS account access
key ID and secret key for everyday work with KMS. Instead, use the
access key ID and secret access key for an IAM user, or you can use the
AWS Security Token Service to generate temporary security credentials
that you can use to sign requests.

All KMS operations require Signature Version 4.

B<Recording API Requests>

KMS supports AWS CloudTrail, a service that records AWS API calls and
related events for your AWS account and delivers them to an Amazon S3
bucket that you specify. By using the information collected by
CloudTrail, you can determine what requests were made to KMS, who made
the request, when it was made, and so on. To learn more about
CloudTrail, including how to turn it on and find your log files, see
the AWS CloudTrail User Guide

B<Additional Resources>

For more information about credentials and request signing, see the
following:

=over

=item * AWS Security Credentials. This topic provides general
information about the types of credentials used for accessing AWS.

=item * AWS Security Token Service. This guide describes how to create
and use temporary security credentials.

=item * Signing AWS API Requests. This set of topics walks you through
the process of signing a request using an access key ID and a secret
access key.

=back










=head1 METHODS

=head2 CreateAlias()

  Arguments described in: L<Paws::KMS::CreateAlias>

  Returns: nothing

  

Creates a display name for a customer master key. An alias can be used
to identify a key and should be unique. The console enforces a
one-to-one mapping between the alias and a key. An alias name can
contain only alphanumeric characters, forward slashes (/), underscores
(_), and dashes (-). An alias must start with the word "alias" followed
by a forward slash (alias/). An alias that begins with "aws" after the
forward slash (alias/aws...) is reserved by Amazon Web Services (AWS).











=head2 CreateGrant()

  Arguments described in: L<Paws::KMS::CreateGrant>

  Returns: L<Paws::KMS::CreateGrantResponse>

  

Adds a grant to a key to specify who can access the key and under what
conditions. Grants are alternate permission mechanisms to key policies.
If absent, access to the key is evaluated based on IAM policies
attached to the user. By default, grants do not expire. Grants can be
listed, retired, or revoked as indicated by the following APIs.
Typically, when you are finished using a grant, you retire it. When you
want to end a grant immediately, revoke it. For more information about
grants, see Grants.

=over

=item 1. ListGrants

=item 2. RetireGrant

=item 3. RevokeGrant

=back











=head2 CreateKey()

  Arguments described in: L<Paws::KMS::CreateKey>

  Returns: L<Paws::KMS::CreateKeyResponse>

  

Creates a customer master key. Customer master keys can be used to
encrypt small amounts of data (less than 4K) directly, but they are
most commonly used to encrypt or envelope data keys that are then used
to encrypt customer data. For more information about data keys, see
GenerateDataKey and GenerateDataKeyWithoutPlaintext.











=head2 Decrypt()

  Arguments described in: L<Paws::KMS::Decrypt>

  Returns: L<Paws::KMS::DecryptResponse>

  

Decrypts ciphertext. Ciphertext is plaintext that has been previously
encrypted by using the Encrypt function.











=head2 DeleteAlias()

  Arguments described in: L<Paws::KMS::DeleteAlias>

  Returns: nothing

  

Deletes the specified alias.











=head2 DescribeKey()

  Arguments described in: L<Paws::KMS::DescribeKey>

  Returns: L<Paws::KMS::DescribeKeyResponse>

  

Provides detailed information about the specified customer master key.











=head2 DisableKey()

  Arguments described in: L<Paws::KMS::DisableKey>

  Returns: nothing

  

Marks a key as disabled, thereby preventing its use.











=head2 DisableKeyRotation()

  Arguments described in: L<Paws::KMS::DisableKeyRotation>

  Returns: nothing

  

Disables rotation of the specified key.











=head2 EnableKey()

  Arguments described in: L<Paws::KMS::EnableKey>

  Returns: nothing

  

Marks a key as enabled, thereby permitting its use. You can have up to
25 enabled keys at one time.











=head2 EnableKeyRotation()

  Arguments described in: L<Paws::KMS::EnableKeyRotation>

  Returns: nothing

  

Enables rotation of the specified customer master key.











=head2 Encrypt()

  Arguments described in: L<Paws::KMS::Encrypt>

  Returns: L<Paws::KMS::EncryptResponse>

  

Encrypts plaintext into ciphertext by using a customer master key.











=head2 GenerateDataKey()

  Arguments described in: L<Paws::KMS::GenerateDataKey>

  Returns: L<Paws::KMS::GenerateDataKeyResponse>

  

Generates a secure data key. Data keys are used to encrypt and decrypt
data. They are wrapped by customer master keys.











=head2 GenerateDataKeyWithoutPlaintext()

  Arguments described in: L<Paws::KMS::GenerateDataKeyWithoutPlaintext>

  Returns: L<Paws::KMS::GenerateDataKeyWithoutPlaintextResponse>

  

Returns a key wrapped by a customer master key without the plaintext
copy of that key. To retrieve the plaintext, see GenerateDataKey.











=head2 GenerateRandom()

  Arguments described in: L<Paws::KMS::GenerateRandom>

  Returns: L<Paws::KMS::GenerateRandomResponse>

  

Generates an unpredictable byte string.











=head2 GetKeyPolicy()

  Arguments described in: L<Paws::KMS::GetKeyPolicy>

  Returns: L<Paws::KMS::GetKeyPolicyResponse>

  

Retrieves a policy attached to the specified key.











=head2 GetKeyRotationStatus()

  Arguments described in: L<Paws::KMS::GetKeyRotationStatus>

  Returns: L<Paws::KMS::GetKeyRotationStatusResponse>

  

Retrieves a Boolean value that indicates whether key rotation is
enabled for the specified key.











=head2 ListAliases()

  Arguments described in: L<Paws::KMS::ListAliases>

  Returns: L<Paws::KMS::ListAliasesResponse>

  

Lists all of the key aliases in the account.











=head2 ListGrants()

  Arguments described in: L<Paws::KMS::ListGrants>

  Returns: L<Paws::KMS::ListGrantsResponse>

  

List the grants for a specified key.











=head2 ListKeyPolicies()

  Arguments described in: L<Paws::KMS::ListKeyPolicies>

  Returns: L<Paws::KMS::ListKeyPoliciesResponse>

  

Retrieves a list of policies attached to a key.











=head2 ListKeys()

  Arguments described in: L<Paws::KMS::ListKeys>

  Returns: L<Paws::KMS::ListKeysResponse>

  

Lists the customer master keys.











=head2 PutKeyPolicy()

  Arguments described in: L<Paws::KMS::PutKeyPolicy>

  Returns: nothing

  

Attaches a policy to the specified key.











=head2 ReEncrypt()

  Arguments described in: L<Paws::KMS::ReEncrypt>

  Returns: L<Paws::KMS::ReEncryptResponse>

  

Encrypts data on the server side with a new customer master key without
exposing the plaintext of the data on the client side. The data is
first decrypted and then encrypted. This operation can also be used to
change the encryption context of a ciphertext.











=head2 RetireGrant()

  Arguments described in: L<Paws::KMS::RetireGrant>

  Returns: nothing

  

Retires a grant. You can retire a grant when you're done using it to
clean up. You should revoke a grant when you intend to actively deny
operations that depend on it.











=head2 RevokeGrant()

  Arguments described in: L<Paws::KMS::RevokeGrant>

  Returns: nothing

  

Revokes a grant. You can revoke a grant to actively deny operations
that depend on it.











=head2 UpdateKeyDescription()

  Arguments described in: L<Paws::KMS::UpdateKeyDescription>

  Returns: nothing

  


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

