package Paws::KMS;
  use Moose;
  sub service { 'kms' }
  sub signing_name { 'kms' }
  sub version { '2014-11-01' }
  sub target_prefix { 'TrentService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CancelKeyDeletion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CancelKeyDeletion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CreateGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CreateKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Decrypt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::Decrypt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImportedKeyMaterial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DeleteImportedKeyMaterial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DescribeKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DisableKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableKeyRotation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DisableKeyRotation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::EnableKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableKeyRotation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::EnableKeyRotation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Encrypt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::Encrypt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateDataKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateDataKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateDataKeyWithoutPlaintext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateDataKeyWithoutPlaintext', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateRandom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateRandom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GetKeyPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyRotationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GetKeyRotationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetParametersForImport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GetParametersForImport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportKeyMaterial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ImportKeyMaterial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeyPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListKeyPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListResourceTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRetirableGrants {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ListRetirableGrants', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutKeyPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::PutKeyPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReEncrypt {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ReEncrypt', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetireGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::RetireGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeGrant {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::RevokeGrant', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ScheduleKeyDeletion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ScheduleKeyDeletion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::UpdateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKeyDescription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::UpdateKeyDescription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListAliases(@_, Marker => $next_result->NextMarker);
        push @{ $result->Aliases }, @{ $next_result->Aliases };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
        $result = $self->ListAliases(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
    }

    return undef
  }
  sub ListAllGrants {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGrants(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListGrants(@_, Marker => $next_result->NextMarker);
        push @{ $result->Grants }, @{ $next_result->Grants };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'Grants') foreach (@{ $result->Grants });
        $result = $self->ListGrants(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Grants') foreach (@{ $result->Grants });
    }

    return undef
  }
  sub ListAllKeyPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeyPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListKeyPolicies(@_, Marker => $next_result->NextMarker);
        push @{ $result->PolicyNames }, @{ $next_result->PolicyNames };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'PolicyNames') foreach (@{ $result->PolicyNames });
        $result = $self->ListKeyPolicies(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'PolicyNames') foreach (@{ $result->PolicyNames });
    }

    return undef
  }
  sub ListAllKeys {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeys(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->Truncated) {
        $next_result = $self->ListKeys(@_, Marker => $next_result->NextMarker);
        push @{ $result->Keys }, @{ $next_result->Keys };
      }
      return $result;
    } else {
      while ($result->Truncated) {
        $callback->($_ => 'Keys') foreach (@{ $result->Keys });
        $result = $self->ListKeys(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Keys') foreach (@{ $result->Keys });
    }

    return undef
  }


  sub operations { qw/CancelKeyDeletion CreateAlias CreateGrant CreateKey Decrypt DeleteAlias DeleteImportedKeyMaterial DescribeKey DisableKey DisableKeyRotation EnableKey EnableKeyRotation Encrypt GenerateDataKey GenerateDataKeyWithoutPlaintext GenerateRandom GetKeyPolicy GetKeyRotationStatus GetParametersForImport ImportKeyMaterial ListAliases ListGrants ListKeyPolicies ListKeys ListResourceTags ListRetirableGrants PutKeyPolicy ReEncrypt RetireGrant RevokeGrant ScheduleKeyDeletion TagResource UntagResource UpdateAlias UpdateKeyDescription / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS - Perl Interface to AWS AWS Key Management Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KMS');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Key Management Service

AWS Key Management Service (AWS KMS) is an encryption and key
management web service. This guide describes the AWS KMS operations
that you can call programmatically. For general information about AWS
KMS, see the AWS Key Management Service Developer Guide
(http://docs.aws.amazon.com/kms/latest/developerguide/).

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms (Java, Ruby, .Net, iOS, Android,
etc.). The SDKs provide a convenient way to create programmatic access
to AWS KMS and other AWS services. For example, the SDKs take care of
tasks such as signing requests (see below), managing errors, and
retrying requests automatically. For more information about the AWS
SDKs, including how to download and install them, see Tools for Amazon
Web Services (http://aws.amazon.com/tools/).

We recommend that you use the AWS SDKs to make programmatic API calls
to AWS KMS.

Clients must support TLS (Transport Layer Security) 1.0. We recommend
TLS 1.2. Clients must also support cipher suites with Perfect Forward
Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve
Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java 7
and later support these modes.

B<Signing Requests>

Requests must be signed by using an access key ID and a secret access
key. We strongly recommend that you I<do not> use your AWS account
(root) access key ID and secret key for everyday work with AWS KMS.
Instead, use the access key ID and secret access key for an IAM user,
or you can use the AWS Security Token Service to generate temporary
security credentials that you can use to sign requests.

All AWS KMS operations require Signature Version 4
(http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

B<Logging API Requests>

AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and
related events for your AWS account and delivers them to an Amazon S3
bucket that you specify. By using the information collected by
CloudTrail, you can determine what requests were made to AWS KMS, who
made the request, when it was made, and so on. To learn more about
CloudTrail, including how to turn it on and find your log files, see
the AWS CloudTrail User Guide
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/).

B<Additional Resources>

For more information about credentials and request signing, see the
following:

=over

=item *

AWS Security Credentials
(http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)
- This topic provides general information about the types of
credentials used for accessing AWS.

=item *

Temporary Security Credentials
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html)
- This section of the I<IAM User Guide> describes how to create and use
temporary security credentials.

=item *

Signature Version 4 Signing Process
(http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
- This set of topics walks you through the process of signing a request
using an access key ID and a secret access key.

=back

B<Commonly Used APIs>

Of the APIs discussed in this guide, the following will prove the most
useful for most applications. You will likely perform actions other
than these, such as creating keys and assigning policies, by using the
console.

=over

=item *

Encrypt

=item *

Decrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyWithoutPlaintext

=back


=head1 METHODS

=head2 CancelKeyDeletion

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::CancelKeyDeletion>

Returns: a L<Paws::KMS::CancelKeyDeletionResponse> instance

Cancels the deletion of a customer master key (CMK). When this
operation is successful, the CMK is set to the C<Disabled> state. To
enable a CMK, use EnableKey. You cannot perform this operation on a CMK
in a different AWS account.

For more information about scheduling and canceling deletion of a CMK,
see Deleting Customer Master Keys
(http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 CreateAlias

=over

=item AliasName => Str

=item TargetKeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::CreateAlias>

Returns: nothing

Creates a display name for a customer master key (CMK). You can use an
alias to identify a CMK in selected operations, such as Encrypt and
GenerateDataKey.

Each CMK can have multiple aliases, but each alias points to only one
CMK. The alias name must be unique in the AWS account and region. To
simplify code that runs in multiple regions, use the same alias name,
but point it to a different CMK in each region.

Because an alias is not a property of a CMK, you can delete and change
the aliases of a CMK without affecting the CMK. Also, aliases do not
appear in the response from the DescribeKey operation. To get the
aliases of all CMKs, use the ListAliases operation.

An alias must start with the word C<alias> followed by a forward slash
(C<alias/>). The alias name can contain only alphanumeric characters,
forward slashes (/), underscores (_), and dashes (-). Alias names
cannot begin with C<aws>; that alias name prefix is reserved by Amazon
Web Services (AWS).

The alias and the CMK it is mapped to must be in the same AWS account
and the same region. You cannot perform this operation on an alias in a
different AWS account.

To map an existing alias to a different CMK, call UpdateAlias.


=head2 CreateGrant

=over

=item GranteePrincipal => Str

=item KeyId => Str

=item Operations => ArrayRef[Str|Undef]

=item [Constraints => L<Paws::KMS::GrantConstraints>]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [Name => Str]

=item [RetiringPrincipal => Str]


=back

Each argument is described in detail in: L<Paws::KMS::CreateGrant>

Returns: a L<Paws::KMS::CreateGrantResponse> instance

Adds a grant to a customer master key (CMK). The grant specifies who
can use the CMK and under what conditions. When setting permissions,
grants are an alternative to key policies.

To perform this operation on a CMK in a different AWS account, specify
the key ARN in the value of the KeyId parameter. For more information
about grants, see Grants
(http://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
the I<AWS Key Management Service Developer Guide>.


=head2 CreateKey

=over

=item [BypassPolicyLockoutSafetyCheck => Bool]

=item [Description => Str]

=item [KeyUsage => Str]

=item [Origin => Str]

=item [Policy => Str]

=item [Tags => ArrayRef[L<Paws::KMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::KMS::CreateKey>

Returns: a L<Paws::KMS::CreateKeyResponse> instance

Creates a customer master key (CMK) in the caller's AWS account.

You can use a CMK to encrypt small amounts of data (4 KiB or less)
directly, but CMKs are more commonly used to encrypt data encryption
keys (DEKs), which are used to encrypt raw data. For more information
about DEKs and the difference between CMKs and DEKs, see the following:

=over

=item *

The GenerateDataKey operation

=item *

AWS Key Management Service Concepts
(http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html) in
the I<AWS Key Management Service Developer Guide>

=back

You cannot use this operation to create a CMK in a different AWS
account.


=head2 Decrypt

=over

=item CiphertextBlob => Str

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::Decrypt>

Returns: a L<Paws::KMS::DecryptResponse> instance

Decrypts ciphertext. Ciphertext is plaintext that has been previously
encrypted by using any of the following operations:

=over

=item *

GenerateDataKey

=item *

GenerateDataKeyWithoutPlaintext

=item *

Encrypt

=back

Note that if a caller has been granted access permissions to all keys
(through, for example, IAM user policies that grant C<Decrypt>
permission on all resources), then ciphertext encrypted by using keys
in other accounts where the key grants access to the caller can be
decrypted. To remedy this, we recommend that you do not grant
C<Decrypt> access in an IAM user policy. Instead grant C<Decrypt>
access only in key policies. If you must grant C<Decrypt> access in an
IAM user policy, you should scope the resource to specific keys or to
specific trusted accounts.


=head2 DeleteAlias

=over

=item AliasName => Str


=back

Each argument is described in detail in: L<Paws::KMS::DeleteAlias>

Returns: nothing

Deletes the specified alias. You cannot perform this operation on an
alias in a different AWS account.

Because an alias is not a property of a CMK, you can delete and change
the aliases of a CMK without affecting the CMK. Also, aliases do not
appear in the response from the DescribeKey operation. To get the
aliases of all CMKs, use the ListAliases operation.

Each CMK can have multiple aliases. To change the alias of a CMK, use
DeleteAlias to delete the current alias and CreateAlias to create a new
alias. To associate an existing alias with a different customer master
key (CMK), call UpdateAlias.


=head2 DeleteImportedKeyMaterial

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DeleteImportedKeyMaterial>

Returns: nothing

Deletes key material that you previously imported. This operation makes
the specified customer master key (CMK) unusable. For more information
about importing key material into AWS KMS, see Importing Key Material
(http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<AWS Key Management Service Developer Guide>. You cannot
perform this operation on a CMK in a different AWS account.

When the specified CMK is in the C<PendingDeletion> state, this
operation does not change the CMK's state. Otherwise, it changes the
CMK's state to C<PendingImport>.

After you delete key material, you can use ImportKeyMaterial to
reimport the same key material into the CMK.


=head2 DescribeKey

=over

=item KeyId => Str

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::DescribeKey>

Returns: a L<Paws::KMS::DescribeKeyResponse> instance

Provides detailed information about the specified customer master key
(CMK).

To perform this operation on a CMK in a different AWS account, specify
the key ARN or alias ARN in the value of the KeyId parameter.


=head2 DisableKey

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DisableKey>

Returns: nothing

Sets the state of a customer master key (CMK) to disabled, thereby
preventing its use for cryptographic operations. You cannot perform
this operation on a CMK in a different AWS account.

For more information about how key state affects the use of a CMK, see
How Key State Affects the Use of a Customer Master Key
(http://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 DisableKeyRotation

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DisableKeyRotation>

Returns: nothing

Disables automatic rotation of the key material for the specified
customer master key (CMK). You cannot perform this operation on a CMK
in a different AWS account.


=head2 EnableKey

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::EnableKey>

Returns: nothing

Sets the state of a customer master key (CMK) to enabled, thereby
permitting its use for cryptographic operations. You cannot perform
this operation on a CMK in a different AWS account.


=head2 EnableKeyRotation

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::EnableKeyRotation>

Returns: nothing

Enables automatic rotation of the key material for the specified
customer master key (CMK). You cannot perform this operation on a CMK
in a different AWS account.


=head2 Encrypt

=over

=item KeyId => Str

=item Plaintext => Str

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::Encrypt>

Returns: a L<Paws::KMS::EncryptResponse> instance

Encrypts plaintext into ciphertext by using a customer master key
(CMK). The C<Encrypt> operation has two primary use cases:

=over

=item *

You can encrypt up to 4 kilobytes (4096 bytes) of arbitrary data such
as an RSA key, a database password, or other sensitive information.

=item *

To move encrypted data from one AWS region to another, you can use this
operation to encrypt in the new region the plaintext data key that was
used to encrypt the data in the original region. This provides you with
an encrypted copy of the data key that can be decrypted in the new
region and used there to decrypt the encrypted data.

=back

To perform this operation on a CMK in a different AWS account, specify
the key ARN or alias ARN in the value of the KeyId parameter.

Unless you are moving encrypted data from one region to another, you
don't use this operation to encrypt a generated data key within a
region. To get data keys that are already encrypted, call the
GenerateDataKey or GenerateDataKeyWithoutPlaintext operation. Data keys
don't need to be encrypted again by calling C<Encrypt>.

To encrypt data locally in your application, use the GenerateDataKey
operation to return a plaintext data encryption key and a copy of the
key encrypted under the CMK of your choosing.


=head2 GenerateDataKey

=over

=item KeyId => Str

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [KeySpec => Str]

=item [NumberOfBytes => Int]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateDataKey>

Returns: a L<Paws::KMS::GenerateDataKeyResponse> instance

Returns a data encryption key that you can use in your application to
encrypt data locally.

You must specify the customer master key (CMK) under which to generate
the data key. You must also specify the length of the data key using
either the C<KeySpec> or C<NumberOfBytes> field. You must specify one
field or the other, but not both. For common key lengths (128-bit and
256-bit symmetric keys), we recommend that you use C<KeySpec>. To
perform this operation on a CMK in a different AWS account, specify the
key ARN or alias ARN in the value of the KeyId parameter.

This operation returns a plaintext copy of the data key in the
C<Plaintext> field of the response, and an encrypted copy of the data
key in the C<CiphertextBlob> field. The data key is encrypted under the
CMK specified in the C<KeyId> field of the request.

We recommend that you use the following pattern to encrypt data locally
in your application:

=over

=item 1.

Use this operation (C<GenerateDataKey>) to get a data encryption key.

=item 2.

Use the plaintext data encryption key (returned in the C<Plaintext>
field of the response) to encrypt data locally, then erase the
plaintext data key from memory.

=item 3.

Store the encrypted data key (returned in the C<CiphertextBlob> field
of the response) alongside the locally encrypted data.

=back

To decrypt data locally:

=over

=item 1.

Use the Decrypt operation to decrypt the encrypted data key into a
plaintext copy of the data key.

=item 2.

Use the plaintext data key to decrypt data locally, then erase the
plaintext data key from memory.

=back

To return only an encrypted copy of the data key, use
GenerateDataKeyWithoutPlaintext. To return a random byte string that is
cryptographically secure, use GenerateRandom.

If you use the optional C<EncryptionContext> field, you must store at
least enough information to be able to reconstruct the full encryption
context when you later send the ciphertext to the Decrypt operation. It
is a good practice to choose an encryption context that you can
reconstruct on the fly to better secure the ciphertext. For more
information, see Encryption Context
(http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 GenerateDataKeyWithoutPlaintext

=over

=item KeyId => Str

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [KeySpec => Str]

=item [NumberOfBytes => Int]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateDataKeyWithoutPlaintext>

Returns: a L<Paws::KMS::GenerateDataKeyWithoutPlaintextResponse> instance

Returns a data encryption key encrypted under a customer master key
(CMK). This operation is identical to GenerateDataKey but returns only
the encrypted copy of the data key.

To perform this operation on a CMK in a different AWS account, specify
the key ARN or alias ARN in the value of the KeyId parameter.

This operation is useful in a system that has multiple components with
different degrees of trust. For example, consider a system that stores
encrypted data in containers. Each container stores the encrypted data
and an encrypted copy of the data key. One component of the system,
called the I<control plane>, creates new containers. When it creates a
new container, it uses this operation
(C<GenerateDataKeyWithoutPlaintext>) to get an encrypted data key and
then stores it in the container. Later, a different component of the
system, called the I<data plane>, puts encrypted data into the
containers. To do this, it passes the encrypted data key to the Decrypt
operation, then uses the returned plaintext data key to encrypt data,
and finally stores the encrypted data in the container. In this system,
the control plane never sees the plaintext data key.


=head2 GenerateRandom

=over

=item [NumberOfBytes => Int]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateRandom>

Returns: a L<Paws::KMS::GenerateRandomResponse> instance

Returns a random byte string that is cryptographically secure.

For more information about entropy and random number generation, see
the AWS Key Management Service Cryptographic Details
(https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf)
whitepaper.


=head2 GetKeyPolicy

=over

=item KeyId => Str

=item PolicyName => Str


=back

Each argument is described in detail in: L<Paws::KMS::GetKeyPolicy>

Returns: a L<Paws::KMS::GetKeyPolicyResponse> instance

Gets a key policy attached to the specified customer master key (CMK).
You cannot perform this operation on a CMK in a different AWS account.


=head2 GetKeyRotationStatus

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::GetKeyRotationStatus>

Returns: a L<Paws::KMS::GetKeyRotationStatusResponse> instance

Gets a Boolean value that indicates whether automatic rotation of the
key material is enabled for the specified customer master key (CMK).

To perform this operation on a CMK in a different AWS account, specify
the key ARN in the value of the KeyId parameter.


=head2 GetParametersForImport

=over

=item KeyId => Str

=item WrappingAlgorithm => Str

=item WrappingKeySpec => Str


=back

Each argument is described in detail in: L<Paws::KMS::GetParametersForImport>

Returns: a L<Paws::KMS::GetParametersForImportResponse> instance

Returns the items you need in order to import key material into AWS KMS
from your existing key management infrastructure. For more information
about importing key material into AWS KMS, see Importing Key Material
(http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<AWS Key Management Service Developer Guide>.

You must specify the key ID of the customer master key (CMK) into which
you will import key material. This CMK's C<Origin> must be C<EXTERNAL>.
You must also specify the wrapping algorithm and type of wrapping key
(public key) that you will use to encrypt the key material. You cannot
perform this operation on a CMK in a different AWS account.

This operation returns a public key and an import token. Use the public
key to encrypt the key material. Store the import token to send with a
subsequent ImportKeyMaterial request. The public key and import token
from the same response must be used together. These items are valid for
24 hours. When they expire, they cannot be used for a subsequent
ImportKeyMaterial request. To get new ones, send another
C<GetParametersForImport> request.


=head2 ImportKeyMaterial

=over

=item EncryptedKeyMaterial => Str

=item ImportToken => Str

=item KeyId => Str

=item [ExpirationModel => Str]

=item [ValidTo => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ImportKeyMaterial>

Returns: a L<Paws::KMS::ImportKeyMaterialResponse> instance

Imports key material into an existing AWS KMS customer master key (CMK)
that was created without key material. You cannot perform this
operation on a CMK in a different AWS account. For more information
about creating CMKs with no key material and then importing key
material, see Importing Key Material
(http://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<AWS Key Management Service Developer Guide>.

Before using this operation, call GetParametersForImport. Its response
includes a public key and an import token. Use the public key to
encrypt the key material. Then, submit the import token from the same
C<GetParametersForImport> response.

When calling this operation, you must specify the following values:

=over

=item *

The key ID or key ARN of a CMK with no key material. Its C<Origin> must
be C<EXTERNAL>.

To create a CMK with no key material, call CreateKey and set the value
of its C<Origin> parameter to C<EXTERNAL>. To get the C<Origin> of a
CMK, call DescribeKey.)

=item *

The encrypted key material. To get the public key to encrypt the key
material, call GetParametersForImport.

=item *

The import token that GetParametersForImport returned. This token and
the public key used to encrypt the key material must have come from the
same response.

=item *

Whether the key material expires and if so, when. If you set an
expiration date, you can change it only by reimporting the same key
material and specifying a new expiration date. If the key material
expires, AWS KMS deletes the key material and the CMK becomes unusable.
To use the CMK again, you must reimport the same key material.

=back

When this operation is successful, the CMK's key state changes from
C<PendingImport> to C<Enabled>, and you can use the CMK. After you
successfully import key material into a CMK, you can reimport the same
key material into that CMK, but you cannot import different key
material.


=head2 ListAliases

=over

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListAliases>

Returns: a L<Paws::KMS::ListAliasesResponse> instance

Gets a list of all aliases in the caller's AWS account and region. You
cannot list aliases in other accounts. For more information about
aliases, see CreateAlias.

The response might include several aliases that do not have a
C<TargetKeyId> field because they are not associated with a CMK. These
are predefined aliases that are reserved for CMKs managed by AWS
services. If an alias is not associated with a CMK, the alias does not
count against the alias limit
(http://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit)
for your account.


=head2 ListGrants

=over

=item KeyId => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListGrants>

Returns: a L<Paws::KMS::ListGrantsResponse> instance

Gets a list of all grants for the specified customer master key (CMK).

To perform this operation on a CMK in a different AWS account, specify
the key ARN in the value of the KeyId parameter.


=head2 ListKeyPolicies

=over

=item KeyId => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListKeyPolicies>

Returns: a L<Paws::KMS::ListKeyPoliciesResponse> instance

Gets the names of the key policies that are attached to a customer
master key (CMK). This operation is designed to get policy names that
you can use in a GetKeyPolicy operation. However, the only valid policy
name is C<default>. You cannot perform this operation on a CMK in a
different AWS account.


=head2 ListKeys

=over

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListKeys>

Returns: a L<Paws::KMS::ListKeysResponse> instance

Gets a list of all customer master keys (CMKs) in the caller's AWS
account and region.


=head2 ListResourceTags

=over

=item KeyId => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListResourceTags>

Returns: a L<Paws::KMS::ListResourceTagsResponse> instance

Returns a list of all tags for the specified customer master key (CMK).

You cannot perform this operation on a CMK in a different AWS account.


=head2 ListRetirableGrants

=over

=item RetiringPrincipal => Str

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListRetirableGrants>

Returns: a L<Paws::KMS::ListGrantsResponse> instance

Returns a list of all grants for which the grant's C<RetiringPrincipal>
matches the one specified.

A typical use is to list all grants that you are able to retire. To
retire a grant, use RetireGrant.


=head2 PutKeyPolicy

=over

=item KeyId => Str

=item Policy => Str

=item PolicyName => Str

=item [BypassPolicyLockoutSafetyCheck => Bool]


=back

Each argument is described in detail in: L<Paws::KMS::PutKeyPolicy>

Returns: nothing

Attaches a key policy to the specified customer master key (CMK). You
cannot perform this operation on a CMK in a different AWS account.

For more information about key policies, see Key Policies
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 ReEncrypt

=over

=item CiphertextBlob => Str

=item DestinationKeyId => Str

=item [DestinationEncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [SourceEncryptionContext => L<Paws::KMS::EncryptionContextType>]


=back

Each argument is described in detail in: L<Paws::KMS::ReEncrypt>

Returns: a L<Paws::KMS::ReEncryptResponse> instance

Encrypts data on the server side with a new customer master key (CMK)
without exposing the plaintext of the data on the client side. The data
is first decrypted and then reencrypted. You can also use this
operation to change the encryption context of a ciphertext.

You can reencrypt data using CMKs in different AWS accounts.

Unlike other operations, C<ReEncrypt> is authorized twice, once as
C<ReEncryptFrom> on the source CMK and once as C<ReEncryptTo> on the
destination CMK. We recommend that you include the C<"kms:ReEncrypt*">
permission in your key policies
(http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
to permit reencryption from or to the CMK. This permission is
automatically included in the key policy when you create a CMK through
the console, but you must include it manually when you create a CMK
programmatically or when you set a key policy with the PutKeyPolicy
operation.


=head2 RetireGrant

=over

=item [GrantId => Str]

=item [GrantToken => Str]

=item [KeyId => Str]


=back

Each argument is described in detail in: L<Paws::KMS::RetireGrant>

Returns: nothing

Retires a grant. To clean up, you can retire a grant when you're done
using it. You should revoke a grant when you intend to actively deny
operations that depend on it. The following are permitted to call this
API:

=over

=item *

The AWS account (root user) under which the grant was created

=item *

The C<RetiringPrincipal>, if present in the grant

=item *

The C<GranteePrincipal>, if C<RetireGrant> is an operation specified in
the grant

=back

You must identify the grant to retire by its grant token or by a
combination of the grant ID and the Amazon Resource Name (ARN) of the
customer master key (CMK). A grant token is a unique variable-length
base64-encoded string. A grant ID is a 64 character unique identifier
of a grant. The CreateGrant operation returns both.


=head2 RevokeGrant

=over

=item GrantId => Str

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::RevokeGrant>

Returns: nothing

Revokes the specified grant for the specified customer master key
(CMK). You can revoke a grant to actively deny operations that depend
on it.

To perform this operation on a CMK in a different AWS account, specify
the key ARN in the value of the KeyId parameter.


=head2 ScheduleKeyDeletion

=over

=item KeyId => Str

=item [PendingWindowInDays => Int]


=back

Each argument is described in detail in: L<Paws::KMS::ScheduleKeyDeletion>

Returns: a L<Paws::KMS::ScheduleKeyDeletionResponse> instance

Schedules the deletion of a customer master key (CMK). You may provide
a waiting period, specified in days, before deletion occurs. If you do
not provide a waiting period, the default period of 30 days is used.
When this operation is successful, the state of the CMK changes to
C<PendingDeletion>. Before the waiting period ends, you can use
CancelKeyDeletion to cancel the deletion of the CMK. After the waiting
period ends, AWS KMS deletes the CMK and all AWS KMS data associated
with it, including all aliases that refer to it.

You cannot perform this operation on a CMK in a different AWS account.

Deleting a CMK is a destructive and potentially dangerous operation.
When a CMK is deleted, all data that was encrypted under the CMK is
rendered unrecoverable. To restrict the use of a CMK without deleting
it, use DisableKey.

For more information about scheduling a CMK for deletion, see Deleting
Customer Master Keys
(http://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 TagResource

=over

=item KeyId => Str

=item Tags => ArrayRef[L<Paws::KMS::Tag>]


=back

Each argument is described in detail in: L<Paws::KMS::TagResource>

Returns: nothing

Adds or overwrites one or more tags for the specified customer master
key (CMK). You cannot perform this operation on a CMK in a different
AWS account.

Each tag consists of a tag key and a tag value. Tag keys and tag values
are both required, but tag values can be empty (null) strings.

You cannot use the same tag key more than once per CMK. For example,
consider a CMK with one tag whose tag key is C<Purpose> and tag value
is C<Test>. If you send a C<TagResource> request for this CMK with a
tag key of C<Purpose> and a tag value of C<Prod>, it does not create a
second tag. Instead, the original tag is overwritten with the new tag
value.

For information about the rules that apply to tag keys and tag values,
see User-Defined Tag Restrictions
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
in the I<AWS Billing and Cost Management User Guide>.


=head2 UntagResource

=over

=item KeyId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::KMS::UntagResource>

Returns: nothing

Removes the specified tag or tags from the specified customer master
key (CMK). You cannot perform this operation on a CMK in a different
AWS account.

To remove a tag, you specify the tag key for each tag to remove. You do
not specify the tag value. To overwrite the tag value for an existing
tag, use TagResource.


=head2 UpdateAlias

=over

=item AliasName => Str

=item TargetKeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::UpdateAlias>

Returns: nothing

Associates an existing alias with a different customer master key
(CMK). Each CMK can have multiple aliases, but the aliases must be
unique within the account and region. You cannot perform this operation
on an alias in a different AWS account.

This operation works only on existing aliases. To change the alias of a
CMK to a new value, use CreateAlias to create a new alias and
DeleteAlias to delete the old alias.

Because an alias is not a property of a CMK, you can create, update,
and delete the aliases of a CMK without affecting the CMK. Also,
aliases do not appear in the response from the DescribeKey operation.
To get the aliases of all CMKs in the account, use the ListAliases
operation.

An alias name can contain only alphanumeric characters, forward slashes
(/), underscores (_), and dashes (-). An alias must start with the word
C<alias> followed by a forward slash (C<alias/>). The alias name can
contain only alphanumeric characters, forward slashes (/), underscores
(_), and dashes (-). Alias names cannot begin with C<aws>; that alias
name prefix is reserved by Amazon Web Services (AWS).


=head2 UpdateKeyDescription

=over

=item Description => Str

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::UpdateKeyDescription>

Returns: nothing

Updates the description of a customer master key (CMK). To see the
decription of a CMK, use DescribeKey.

You cannot perform this operation on a CMK in a different AWS account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAliases(sub { },[Limit => Int, Marker => Str])

=head2 ListAllAliases([Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Aliases, passing the object as the first parameter, and the string 'Aliases' as the second parameter 

If not, it will return a a L<Paws::KMS::ListAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGrants(sub { },KeyId => Str, [Limit => Int, Marker => Str])

=head2 ListAllGrants(KeyId => Str, [Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Grants, passing the object as the first parameter, and the string 'Grants' as the second parameter 

If not, it will return a a L<Paws::KMS::ListGrantsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKeyPolicies(sub { },KeyId => Str, [Limit => Int, Marker => Str])

=head2 ListAllKeyPolicies(KeyId => Str, [Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PolicyNames, passing the object as the first parameter, and the string 'PolicyNames' as the second parameter 

If not, it will return a a L<Paws::KMS::ListKeyPoliciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKeys(sub { },[Limit => Int, Marker => Str])

=head2 ListAllKeys([Limit => Int, Marker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Keys, passing the object as the first parameter, and the string 'Keys' as the second parameter 

If not, it will return a a L<Paws::KMS::ListKeysResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

