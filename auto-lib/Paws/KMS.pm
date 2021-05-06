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
  sub ConnectCustomKeyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::ConnectCustomKeyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomKeyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::CreateCustomKeyStore', @_);
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
  sub DeleteCustomKeyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DeleteCustomKeyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteImportedKeyMaterial {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DeleteImportedKeyMaterial', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomKeyStores {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DescribeCustomKeyStores', @_);
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
  sub DisconnectCustomKeyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::DisconnectCustomKeyStore', @_);
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
  sub GenerateDataKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateDataKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateDataKeyPairWithoutPlaintext {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GenerateDataKeyPairWithoutPlaintext', @_);
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
  sub GetPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::GetPublicKey', @_);
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
  sub Sign {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::Sign', @_);
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
  sub UpdateCustomKeyStore {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::UpdateCustomKeyStore', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKeyDescription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::UpdateKeyDescription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Verify {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KMS::Verify', @_);
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


  sub operations { qw/CancelKeyDeletion ConnectCustomKeyStore CreateAlias CreateCustomKeyStore CreateGrant CreateKey Decrypt DeleteAlias DeleteCustomKeyStore DeleteImportedKeyMaterial DescribeCustomKeyStores DescribeKey DisableKey DisableKeyRotation DisconnectCustomKeyStore EnableKey EnableKeyRotation Encrypt GenerateDataKey GenerateDataKeyPair GenerateDataKeyPairWithoutPlaintext GenerateDataKeyWithoutPlaintext GenerateRandom GetKeyPolicy GetKeyRotationStatus GetParametersForImport GetPublicKey ImportKeyMaterial ListAliases ListGrants ListKeyPolicies ListKeys ListResourceTags ListRetirableGrants PutKeyPolicy ReEncrypt RetireGrant RevokeGrant ScheduleKeyDeletion Sign TagResource UntagResource UpdateAlias UpdateCustomKeyStore UpdateKeyDescription Verify / }

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
KMS, see the I<AWS Key Management Service Developer Guide>
(https://docs.aws.amazon.com/kms/latest/developerguide/).

AWS provides SDKs that consist of libraries and sample code for various
programming languages and platforms (Java, Ruby, .Net, macOS, Android,
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
Instead, use the access key ID and secret access key for an IAM user.
You can also use the AWS Security Token Service to generate temporary
security credentials that you can use to sign requests.

All AWS KMS operations require Signature Version 4
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

B<Logging API Requests>

AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and
related events for your AWS account and delivers them to an Amazon S3
bucket that you specify. By using the information collected by
CloudTrail, you can determine what requests were made to AWS KMS, who
made the request, when it was made, and so on. To learn more about
CloudTrail, including how to turn it on and find your log files, see
the AWS CloudTrail User Guide
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/).

B<Additional Resources>

For more information about credentials and request signing, see the
following:

=over

=item *

AWS Security Credentials
(https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)
- This topic provides general information about the types of
credentials used for accessing AWS.

=item *

Temporary Security Credentials
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html)
- This section of the I<IAM User Guide> describes how to create and use
temporary security credentials.

=item *

Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
- This set of topics walks you through the process of signing a request
using an access key ID and a secret access key.

=back

B<Commonly Used API Operations>

Of the API operations discussed in this guide, the following will prove
the most useful for most applications. You will likely perform
operations other than these, such as creating keys and assigning
policies, by using the console.

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


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms-2014-11-01>


=head1 METHODS

=head2 CancelKeyDeletion

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::CancelKeyDeletion>

Returns: a L<Paws::KMS::CancelKeyDeletionResponse> instance

Cancels the deletion of a customer master key (CMK). When this
operation succeeds, the key state of the CMK is C<Disabled>. To enable
the CMK, use EnableKey. You cannot perform this operation on a CMK in a
different AWS account.

For more information about scheduling and canceling deletion of a CMK,
see Deleting Customer Master Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
in the I<AWS Key Management Service Developer Guide>.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 ConnectCustomKeyStore

=over

=item CustomKeyStoreId => Str


=back

Each argument is described in detail in: L<Paws::KMS::ConnectCustomKeyStore>

Returns: a L<Paws::KMS::ConnectCustomKeyStoreResponse> instance

Connects or reconnects a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
to its associated AWS CloudHSM cluster.

The custom key store must be connected before you can create customer
master keys (CMKs) in the key store or use the CMKs it contains. You
can disconnect and reconnect a custom key store at any time.

To connect a custom key store, its associated AWS CloudHSM cluster must
have at least one active HSM. To get the number of active HSMs in a
cluster, use the DescribeClusters
(https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html)
operation. To add HSMs to the cluster, use the CreateHsm
(https://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_CreateHsm.html)
operation. Also, the C<kmsuser> crypto user
(https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)
(CU) must not be logged into the cluster. This prevents AWS KMS from
using this account to log in.

The connection process can take an extended amount of time to complete;
up to 20 minutes. This operation starts the connection process, but it
does not wait for it to complete. When it succeeds, this operation
quickly returns an HTTP 200 response and a JSON object with no
properties. However, this response does not indicate that the custom
key store is connected. To get the connection state of the custom key
store, use the DescribeCustomKeyStores operation.

During the connection process, AWS KMS finds the AWS CloudHSM cluster
that is associated with the custom key store, creates the connection
infrastructure, connects to the cluster, logs into the AWS CloudHSM
client as the C<kmsuser> CU, and rotates its password.

The C<ConnectCustomKeyStore> operation might fail for various reasons.
To find the reason, use the DescribeCustomKeyStores operation and see
the C<ConnectionErrorCode> in the response. For help interpreting the
C<ConnectionErrorCode>, see CustomKeyStoresListEntry.

To fix the failure, use the DisconnectCustomKeyStore operation to
disconnect the custom key store, correct the error, use the
UpdateCustomKeyStore operation if necessary, and then use
C<ConnectCustomKeyStore> again.

If you are having trouble connecting or disconnecting a custom key
store, see Troubleshooting a Custom Key Store
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 CreateAlias

=over

=item AliasName => Str

=item TargetKeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::CreateAlias>

Returns: nothing

Creates a display name for a customer managed customer master key
(CMK). You can use an alias to identify a CMK in cryptographic
operations, such as Encrypt and GenerateDataKey. You can change the CMK
associated with the alias at any time.

Aliases are easier to remember than key IDs. They can also help to
simplify your applications. For example, if you use an alias in your
code, you can change the CMK your code uses by associating a given
alias with a different CMK.

To run the same code in multiple AWS regions, use an alias in your
code, such as C<alias/ApplicationKey>. Then, in each AWS Region, create
an C<alias/ApplicationKey> alias that is associated with a CMK in that
Region. When you run your code, it uses the C<alias/ApplicationKey> CMK
for that AWS Region without any Region-specific code.

This operation does not return a response. To get the alias that you
created, use the ListAliases operation.

To use aliases successfully, be aware of the following information.

=over

=item *

Each alias points to only one CMK at a time, although a single CMK can
have multiple aliases. The alias and its associated CMK must be in the
same AWS account and Region.

=item *

You can associate an alias with any customer managed CMK in the same
AWS account and Region. However, you do not have permission to
associate an alias with an AWS managed CMK
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk)
or an AWS owned CMK
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-owned-cmk).

=item *

To change the CMK associated with an alias, use the UpdateAlias
operation. The current CMK and the new CMK must be the same type (both
symmetric or both asymmetric) and they must have the same key usage
(C<ENCRYPT_DECRYPT> or C<SIGN_VERIFY>). This restriction prevents
cryptographic errors in code that uses aliases.

=item *

The alias name must begin with C<alias/> followed by a name, such as
C<alias/ExampleAlias>. It can contain only alphanumeric characters,
forward slashes (/), underscores (_), and dashes (-). The alias name
cannot begin with C<alias/aws/>. The C<alias/aws/> prefix is reserved
for AWS managed CMKs
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).

=item *

The alias name must be unique within an AWS Region. However, you can
use the same alias name in multiple Regions of the same AWS account.
Each instance of the alias is associated with a CMK in its Region.

=item *

After you create an alias, you cannot change its alias name. However,
you can use the DeleteAlias operation to delete the alias and then
create a new alias with the desired name.

=item *

You can use an alias name or alias ARN to identify a CMK in AWS KMS
cryptographic operations and in the DescribeKey operation. However, you
cannot use alias names or alias ARNs in API operations that manage
CMKs, such as DisableKey or GetKeyPolicy. For information about the
valid CMK identifiers for each AWS KMS API operation, see the
descriptions of the C<KeyId> parameter in the API operation
documentation.

=back

Because an alias is not a property of a CMK, you can delete and change
the aliases of a CMK without affecting the CMK. Also, aliases do not
appear in the response from the DescribeKey operation. To get the
aliases and alias ARNs of CMKs in each AWS account and Region, use the
ListAliases operation.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 CreateCustomKeyStore

=over

=item CloudHsmClusterId => Str

=item CustomKeyStoreName => Str

=item KeyStorePassword => Str

=item TrustAnchorCertificate => Str


=back

Each argument is described in detail in: L<Paws::KMS::CreateCustomKeyStore>

Returns: a L<Paws::KMS::CreateCustomKeyStoreResponse> instance

Creates a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
that is associated with an AWS CloudHSM cluster
(https://docs.aws.amazon.com/cloudhsm/latest/userguide/clusters.html)
that you own and manage.

This operation is part of the Custom Key Store feature
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in AWS KMS, which combines the convenience and extensive
integration of AWS KMS with the isolation and control of a
single-tenant key store.

Before you create the custom key store, you must assemble the required
elements, including an AWS CloudHSM cluster that fulfills the
requirements for a custom key store. For details about the required
elements, see Assemble the Prerequisites
(https://docs.aws.amazon.com/kms/latest/developerguide/create-keystore.html#before-keystore)
in the I<AWS Key Management Service Developer Guide>.

When the operation completes successfully, it returns the ID of the new
custom key store. Before you can use your new custom key store, you
need to use the ConnectCustomKeyStore operation to connect the new key
store to its AWS CloudHSM cluster. Even if you are not going to use
your custom key store immediately, you might want to connect it to
verify that all settings are correct and then disconnect it until you
are ready to use it.

For help with failures, see Troubleshooting a Custom Key Store
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
in the I<AWS Key Management Service Developer Guide>.


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

Adds a grant to a customer master key (CMK). The grant allows the
grantee principal to use the CMK when the conditions specified in the
grant are met. When setting permissions, grants are an alternative to
key policies.

To create a grant that allows a cryptographic operation only when the
request includes a particular encryption context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context),
use the C<Constraints> parameter. For details, see GrantConstraints.

You can create grants on symmetric and asymmetric CMKs. However, if the
grant allows an operation that the CMK does not support, C<CreateGrant>
fails with a C<ValidationException>.

=over

=item *

Grants for symmetric CMKs cannot allow operations that are not
supported for symmetric CMKs, including Sign, Verify, and GetPublicKey.
(There are limited exceptions to this rule for legacy operations, but
you should not create a grant for an operation that AWS KMS does not
support.)

=item *

Grants for asymmetric CMKs cannot allow operations that are not
supported for asymmetric CMKs, including operations that generate data
keys
(https://docs.aws.amazon.com/kms/latest/APIReference/API_GenerateDataKey)
or data key pairs
(https://docs.aws.amazon.com/kms/latest/APIReference/API_GenerateDataKeyPair),
or operations related to automatic key rotation
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html),
imported key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
or CMKs in custom key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).

=item *

Grants for asymmetric CMKs with a C<KeyUsage> of C<ENCRYPT_DECRYPT>
cannot allow the Sign or Verify operations. Grants for asymmetric CMKs
with a C<KeyUsage> of C<SIGN_VERIFY> cannot allow the Encrypt or
Decrypt operations.

=item *

Grants for asymmetric CMKs cannot include an encryption context grant
constraint. An encryption context is not supported on asymmetric CMKs.

=back

For information about symmetric and asymmetric CMKs, see Using
Symmetric and Asymmetric CMKs
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<AWS Key Management Service Developer Guide>.

To perform this operation on a CMK in a different AWS account, specify
the key ARN in the value of the C<KeyId> parameter. For more
information about grants, see Grants
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html) in
the I< I<AWS Key Management Service Developer Guide> >.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 CreateKey

=over

=item [BypassPolicyLockoutSafetyCheck => Bool]

=item [CustomerMasterKeySpec => Str]

=item [CustomKeyStoreId => Str]

=item [Description => Str]

=item [KeyUsage => Str]

=item [Origin => Str]

=item [Policy => Str]

=item [Tags => ArrayRef[L<Paws::KMS::Tag>]]


=back

Each argument is described in detail in: L<Paws::KMS::CreateKey>

Returns: a L<Paws::KMS::CreateKeyResponse> instance

Creates a unique customer managed customer master key
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master-keys)
(CMK) in your AWS account and Region. You cannot use this operation to
create a CMK in a different AWS account.

You can use the C<CreateKey> operation to create symmetric or
asymmetric CMKs.

=over

=item *

B<Symmetric CMKs> contain a 256-bit symmetric key that never leaves AWS
KMS unencrypted. To use the CMK, you must call AWS KMS. You can use a
symmetric CMK to encrypt and decrypt small amounts of data, but they
are typically used to generate data keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-keys)
and data keys pairs
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#data-key-pairs).
For details, see GenerateDataKey and GenerateDataKeyPair.

=item *

B<Asymmetric CMKs> can contain an RSA key pair or an Elliptic Curve
(ECC) key pair. The private key in an asymmetric CMK never leaves AWS
KMS unencrypted. However, you can use the GetPublicKey operation to
download the public key so it can be used outside of AWS KMS. CMKs with
RSA key pairs can be used to encrypt or decrypt data or sign and verify
messages (but not both). CMKs with ECC key pairs can be used only to
sign and verify messages.

=back

For information about symmetric and asymmetric CMKs, see Using
Symmetric and Asymmetric CMKs
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<AWS Key Management Service Developer Guide>.

To create different types of CMKs, use the following guidance:

=over

=item Asymmetric CMKs

To create an asymmetric CMK, use the C<CustomerMasterKeySpec> parameter
to specify the type of key material in the CMK. Then, use the
C<KeyUsage> parameter to determine whether the CMK will be used to
encrypt and decrypt or sign and verify. You can't change these
properties after the CMK is created.

=item Symmetric CMKs

When creating a symmetric CMK, you don't need to specify the
C<CustomerMasterKeySpec> or C<KeyUsage> parameters. The default value
for C<CustomerMasterKeySpec>, C<SYMMETRIC_DEFAULT>, and the default
value for C<KeyUsage>, C<ENCRYPT_DECRYPT>, are the only valid values
for symmetric CMKs.

=item Imported Key Material

To import your own key material, begin by creating a symmetric CMK with
no key material. To do this, use the C<Origin> parameter of
C<CreateKey> with a value of C<EXTERNAL>. Next, use
GetParametersForImport operation to get a public key and import token,
and use the public key to encrypt your key material. Then, use
ImportKeyMaterial with your import token to import the key material.
For step-by-step instructions, see Importing Key Material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I< I<AWS Key Management Service Developer Guide> >. You cannot
import the key material into an asymmetric CMK.

=item Custom Key Stores

To create a symmetric CMK in a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html),
use the C<CustomKeyStoreId> parameter to specify the custom key store.
You must also use the C<Origin> parameter with a value of
C<AWS_CLOUDHSM>. The AWS CloudHSM cluster that is associated with the
custom key store must have at least two active HSMs in different
Availability Zones in the AWS Region.

You cannot create an asymmetric CMK in a custom key store. For
information about custom key stores in AWS KMS see Using Custom Key
Stores
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
in the I< I<AWS Key Management Service Developer Guide> >.

=back



=head2 Decrypt

=over

=item CiphertextBlob => Str

=item [EncryptionAlgorithm => Str]

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [KeyId => Str]


=back

Each argument is described in detail in: L<Paws::KMS::Decrypt>

Returns: a L<Paws::KMS::DecryptResponse> instance

Decrypts ciphertext that was encrypted by a AWS KMS customer master key
(CMK) using any of the following operations:

=over

=item *

Encrypt

=item *

GenerateDataKey

=item *

GenerateDataKeyPair

=item *

GenerateDataKeyWithoutPlaintext

=item *

GenerateDataKeyPairWithoutPlaintext

=back

You can use this operation to decrypt ciphertext that was encrypted
under a symmetric or asymmetric CMK. When the CMK is asymmetric, you
must specify the CMK and the encryption algorithm that was used to
encrypt the ciphertext. For information about symmetric and asymmetric
CMKs, see Using Symmetric and Asymmetric CMKs
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<AWS Key Management Service Developer Guide>.

The Decrypt operation also decrypts ciphertext that was encrypted
outside of AWS KMS by the public key in an AWS KMS asymmetric CMK.
However, it cannot decrypt ciphertext produced by other libraries, such
as the AWS Encryption SDK
(https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/) or
Amazon S3 client-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html).
These libraries return a ciphertext format that is incompatible with
AWS KMS.

If the ciphertext was encrypted under a symmetric CMK, you do not need
to specify the CMK or the encryption algorithm. AWS KMS can get this
information from metadata that it adds to the symmetric ciphertext
blob. However, if you prefer, you can specify the C<KeyId> to ensure
that a particular CMK is used to decrypt the ciphertext. If you specify
a different CMK than the one used to encrypt the ciphertext, the
C<Decrypt> operation fails.

Whenever possible, use key policies to give users permission to call
the Decrypt operation on a particular CMK, instead of using IAM
policies. Otherwise, you might create an IAM user policy that gives the
user Decrypt permission on all CMKs. This user could decrypt ciphertext
that was encrypted by CMKs in other accounts if the key policy for the
cross-account CMK permits it. If you must use an IAM policy for
C<Decrypt> permissions, limit the user to particular CMKs or particular
trusted accounts.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


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


=head2 DeleteCustomKeyStore

=over

=item CustomKeyStoreId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DeleteCustomKeyStore>

Returns: a L<Paws::KMS::DeleteCustomKeyStoreResponse> instance

Deletes a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
This operation does not delete the AWS CloudHSM cluster that is
associated with the custom key store, or affect any users or keys in
the cluster.

The custom key store that you delete cannot contain any AWS KMS
customer master keys (CMKs)
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys).
Before deleting the key store, verify that you will never need to use
any of the CMKs in the key store for any cryptographic operations.
Then, use ScheduleKeyDeletion to delete the AWS KMS customer master
keys (CMKs) from the key store. When the scheduled waiting period
expires, the C<ScheduleKeyDeletion> operation deletes the CMKs. Then it
makes a best effort to delete the key material from the associated
cluster. However, you might need to manually delete the orphaned key
material
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
from the cluster and its backups.

After all CMKs are deleted from AWS KMS, use DisconnectCustomKeyStore
to disconnect the key store from AWS KMS. Then, you can delete the
custom key store.

Instead of deleting the custom key store, consider using
DisconnectCustomKeyStore to disconnect it from AWS KMS. While the key
store is disconnected, you cannot create or use the CMKs in the key
store. But, you do not need to delete CMKs and you can reconnect a
disconnected custom key store at any time.

If the operation succeeds, it returns a JSON object with no properties.

This operation is part of the Custom Key Store feature
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in AWS KMS, which combines the convenience and extensive
integration of AWS KMS with the isolation and control of a
single-tenant key store.


=head2 DeleteImportedKeyMaterial

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DeleteImportedKeyMaterial>

Returns: nothing

Deletes key material that you previously imported. This operation makes
the specified customer master key (CMK) unusable. For more information
about importing key material into AWS KMS, see Importing Key Material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<AWS Key Management Service Developer Guide>. You cannot
perform this operation on a CMK in a different AWS account.

When the specified CMK is in the C<PendingDeletion> state, this
operation does not change the CMK's state. Otherwise, it changes the
CMK's state to C<PendingImport>.

After you delete key material, you can use ImportKeyMaterial to
reimport the same key material into the CMK.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 DescribeCustomKeyStores

=over

=item [CustomKeyStoreId => Str]

=item [CustomKeyStoreName => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::DescribeCustomKeyStores>

Returns: a L<Paws::KMS::DescribeCustomKeyStoresResponse> instance

Gets information about custom key stores
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
in the account and region.

This operation is part of the Custom Key Store feature
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in AWS KMS, which combines the convenience and extensive
integration of AWS KMS with the isolation and control of a
single-tenant key store.

By default, this operation returns information about all custom key
stores in the account and region. To get only information about a
particular custom key store, use either the C<CustomKeyStoreName> or
C<CustomKeyStoreId> parameter (but not both).

To determine whether the custom key store is connected to its AWS
CloudHSM cluster, use the C<ConnectionState> element in the response.
If an attempt to connect the custom key store failed, the
C<ConnectionState> value is C<FAILED> and the C<ConnectionErrorCode>
element in the response indicates the cause of the failure. For help
interpreting the C<ConnectionErrorCode>, see CustomKeyStoresListEntry.

Custom key stores have a C<DISCONNECTED> connection state if the key
store has never been connected or you use the DisconnectCustomKeyStore
operation to disconnect it. If your custom key store state is
C<CONNECTED> but you are having trouble using it, make sure that its
associated AWS CloudHSM cluster is active and contains the minimum
number of HSMs required for the operation, if any.

For help repairing your custom key store, see the Troubleshooting
Custom Key Stores
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
topic in the I<AWS Key Management Service Developer Guide>.


=head2 DescribeKey

=over

=item KeyId => Str

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::DescribeKey>

Returns: a L<Paws::KMS::DescribeKeyResponse> instance

Provides detailed information about a customer master key (CMK). You
can run C<DescribeKey> on a customer managed CMK
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk)
or an AWS managed CMK
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk).

This detailed information includes the key ARN, creation date (and
deletion date, if applicable), the key state, and the origin and
expiration date (if any) of the key material. For CMKs in custom key
stores, it includes information about the custom key store, such as the
key store ID and the AWS CloudHSM cluster ID. It includes fields, like
C<KeySpec>, that help you distinguish symmetric from asymmetric CMKs.
It also provides information that is particularly important to
asymmetric CMKs, such as the key usage (encryption or signing) and the
encryption algorithms or signing algorithms that the CMK supports.

C<DescribeKey> does not return the following information:

=over

=item *

Aliases associated with the CMK. To get this information, use
ListAliases.

=item *

Whether automatic key rotation is enabled on the CMK. To get this
information, use GetKeyRotationStatus. Also, some key states prevent a
CMK from being automatically rotated. For details, see How Automatic
Key Rotation Works
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-how-it-works)
in I<AWS Key Management Service Developer Guide>.

=item *

Tags on the CMK. To get this information, use ListResourceTags.

=item *

Key policies and grants on the CMK. To get this information, use
GetKeyPolicy and ListGrants.

=back

If you call the C<DescribeKey> operation on a I<predefined AWS alias>,
that is, an AWS alias with no key ID, AWS KMS creates an AWS managed
CMK
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#master_keys).
Then, it associates the alias with the new CMK, and returns the
C<KeyId> and C<Arn> of the new CMK in the response.

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
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I< I<AWS Key Management Service Developer Guide> >.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 DisableKeyRotation

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DisableKeyRotation>

Returns: nothing

Disables automatic rotation of the key material
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
for the specified symmetric customer master key (CMK).

You cannot enable automatic rotation of asymmetric CMKs, CMKs with
imported key material, or CMKs in a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
You cannot perform this operation on a CMK in a different AWS account.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 DisconnectCustomKeyStore

=over

=item CustomKeyStoreId => Str


=back

Each argument is described in detail in: L<Paws::KMS::DisconnectCustomKeyStore>

Returns: a L<Paws::KMS::DisconnectCustomKeyStoreResponse> instance

Disconnects the custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
from its associated AWS CloudHSM cluster. While a custom key store is
disconnected, you can manage the custom key store and its customer
master keys (CMKs), but you cannot create or use CMKs in the custom key
store. You can reconnect the custom key store at any time.

While a custom key store is disconnected, all attempts to create
customer master keys (CMKs) in the custom key store or to use existing
CMKs in cryptographic operations will fail. This action can prevent
users from storing and accessing sensitive data.

To find the connection state of a custom key store, use the
DescribeCustomKeyStores operation. To reconnect a custom key store, use
the ConnectCustomKeyStore operation.

If the operation succeeds, it returns a JSON object with no properties.

This operation is part of the Custom Key Store feature
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in AWS KMS, which combines the convenience and extensive
integration of AWS KMS with the isolation and control of a
single-tenant key store.


=head2 EnableKey

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::EnableKey>

Returns: nothing

Sets the key state of a customer master key (CMK) to enabled. This
allows you to use the CMK for cryptographic operations. You cannot
perform this operation on a CMK in a different AWS account.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 EnableKeyRotation

=over

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::EnableKeyRotation>

Returns: nothing

Enables automatic rotation of the key material
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
for the specified symmetric customer master key (CMK). You cannot
perform this operation on a CMK in a different AWS account.

You cannot enable automatic rotation of asymmetric CMKs, CMKs with
imported key material, or CMKs in a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 Encrypt

=over

=item KeyId => Str

=item Plaintext => Str

=item [EncryptionAlgorithm => Str]

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::Encrypt>

Returns: a L<Paws::KMS::EncryptResponse> instance

Encrypts plaintext into ciphertext by using a customer master key
(CMK). The C<Encrypt> operation has two primary use cases:

=over

=item *

You can encrypt small amounts of arbitrary data, such as a personal
identifier or database password, or other sensitive information.

=item *

You can use the C<Encrypt> operation to move encrypted data from one
AWS region to another. In the first region, generate a data key and use
the plaintext key to encrypt the data. Then, in the new region, call
the C<Encrypt> method on same plaintext data key. Now, you can safely
move the encrypted data and encrypted data key to the new region, and
decrypt in the new region when necessary.

=back

You don't need to use the C<Encrypt> operation to encrypt a data key.
The GenerateDataKey and GenerateDataKeyPair operations return a
plaintext data key and an encrypted copy of that data key.

When you encrypt data, you must specify a symmetric or asymmetric CMK
to use in the encryption operation. The CMK must have a C<KeyUsage>
value of C<ENCRYPT_DECRYPT.> To find the C<KeyUsage> of a CMK, use the
DescribeKey operation.

If you use a symmetric CMK, you can use an encryption context to add
additional security to your encryption operation. If you specify an
C<EncryptionContext> when encrypting data, you must specify the same
encryption context (a case-sensitive exact match) when decrypting the
data. Otherwise, the request to decrypt fails with an
C<InvalidCiphertextException>. For more information, see Encryption
Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<AWS Key Management Service Developer Guide>.

If you specify an asymmetric CMK, you must also specify the encryption
algorithm. The algorithm must be compatible with the CMK type.

When you use an asymmetric CMK to encrypt or reencrypt data, be sure to
record the CMK and encryption algorithm that you choose. You will be
required to provide the same CMK and encryption algorithm when you
decrypt the data. If the CMK and algorithm do not match the values used
to encrypt the data, the decrypt operation fails.

You are not required to supply the CMK ID and encryption algorithm when
you decrypt with symmetric CMKs because AWS KMS stores this information
in the ciphertext blob. AWS KMS cannot store metadata in ciphertext
generated with asymmetric keys. The standard format for asymmetric key
ciphertext does not include configurable fields.

The maximum size of the data that you can encrypt varies with the type
of CMK and the encryption algorithm that you choose.

=over

=item *

Symmetric CMKs

=over

=item *

C<SYMMETRIC_DEFAULT>: 4096 bytes

=back

=item *

C<RSA_2048>

=over

=item *

C<RSAES_OAEP_SHA_1>: 214 bytes

=item *

C<RSAES_OAEP_SHA_256>: 190 bytes

=back

=item *

C<RSA_3072>

=over

=item *

C<RSAES_OAEP_SHA_1>: 342 bytes

=item *

C<RSAES_OAEP_SHA_256>: 318 bytes

=back

=item *

C<RSA_4096>

=over

=item *

C<RSAES_OAEP_SHA_1>: 470 bytes

=item *

C<RSAES_OAEP_SHA_256>: 446 bytes

=back

=back

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.

To perform this operation on a CMK in a different AWS account, specify
the key ARN or alias ARN in the value of the KeyId parameter.


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

Generates a unique symmetric data key. This operation returns a
plaintext copy of the data key and a copy that is encrypted under a
customer master key (CMK) that you specify. You can use the plaintext
key to encrypt your data outside of AWS KMS and store the encrypted
data key with the encrypted data.

C<GenerateDataKey> returns a unique data key for each request. The
bytes in the key are not related to the caller or CMK that is used to
encrypt the data key.

To generate a data key, specify the symmetric CMK that will be used to
encrypt the data key. You cannot use an asymmetric CMK to generate data
keys. To get the type of your CMK, use the DescribeKey operation.

You must also specify the length of the data key. Use either the
C<KeySpec> or C<NumberOfBytes> parameters (but not both). For 128-bit
and 256-bit data keys, use the C<KeySpec> parameter.

If the operation succeeds, the plaintext copy of the data key is in the
C<Plaintext> field of the response, and the encrypted copy of the data
key in the C<CiphertextBlob> field.

To get only an encrypted copy of the data key, use
GenerateDataKeyWithoutPlaintext. To generate an asymmetric data key
pair, use the GenerateDataKeyPair or
GenerateDataKeyPairWithoutPlaintext operation. To get a
cryptographically secure random byte string, use GenerateRandom.

You can use the optional encryption context to add additional security
to the encryption operation. If you specify an C<EncryptionContext>,
you must specify the same encryption context (a case-sensitive exact
match) when decrypting the encrypted data key. Otherwise, the request
to decrypt fails with an InvalidCiphertextException. For more
information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<AWS Key Management Service Developer Guide>.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.

We recommend that you use the following pattern to encrypt data locally
in your application:

=over

=item 1.

Use the C<GenerateDataKey> operation to get a data encryption key.

=item 2.

Use the plaintext data key (returned in the C<Plaintext> field of the
response) to encrypt data locally, then erase the plaintext data key
from memory.

=item 3.

Store the encrypted data key (returned in the C<CiphertextBlob> field
of the response) alongside the locally encrypted data.

=back

To decrypt data locally:

=over

=item 1.

Use the Decrypt operation to decrypt the encrypted data key. The
operation returns a plaintext copy of the data key.

=item 2.

Use the plaintext data key to decrypt data locally, then erase the
plaintext data key from memory.

=back



=head2 GenerateDataKeyPair

=over

=item KeyId => Str

=item KeyPairSpec => Str

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateDataKeyPair>

Returns: a L<Paws::KMS::GenerateDataKeyPairResponse> instance

Generates a unique asymmetric data key pair. The C<GenerateDataKeyPair>
operation returns a plaintext public key, a plaintext private key, and
a copy of the private key that is encrypted under the symmetric CMK you
specify. You can use the data key pair to perform asymmetric
cryptography outside of AWS KMS.

C<GenerateDataKeyPair> returns a unique data key pair for each request.
The bytes in the keys are not related to the caller or the CMK that is
used to encrypt the private key.

You can use the public key that C<GenerateDataKeyPair> returns to
encrypt data or verify a signature outside of AWS KMS. Then, store the
encrypted private key with the data. When you are ready to decrypt data
or sign a message, you can use the Decrypt operation to decrypt the
encrypted private key.

To generate a data key pair, you must specify a symmetric customer
master key (CMK) to encrypt the private key in a data key pair. You
cannot use an asymmetric CMK. To get the type of your CMK, use the
DescribeKey operation.

If you are using the data key pair to encrypt data, or for any
operation where you don't immediately need a private key, consider
using the GenerateDataKeyPairWithoutPlaintext operation.
C<GenerateDataKeyPairWithoutPlaintext> returns a plaintext public key
and an encrypted private key, but omits the plaintext private key that
you need only to decrypt ciphertext or sign a message. Later, when you
need to decrypt the data or sign a message, use the Decrypt operation
to decrypt the encrypted private key in the data key pair.

You can use the optional encryption context to add additional security
to the encryption operation. If you specify an C<EncryptionContext>,
you must specify the same encryption context (a case-sensitive exact
match) when decrypting the encrypted data key. Otherwise, the request
to decrypt fails with an InvalidCiphertextException. For more
information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<AWS Key Management Service Developer Guide>.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 GenerateDataKeyPairWithoutPlaintext

=over

=item KeyId => Str

=item KeyPairSpec => Str

=item [EncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateDataKeyPairWithoutPlaintext>

Returns: a L<Paws::KMS::GenerateDataKeyPairWithoutPlaintextResponse> instance

Generates a unique asymmetric data key pair. The
C<GenerateDataKeyPairWithoutPlaintext> operation returns a plaintext
public key and a copy of the private key that is encrypted under the
symmetric CMK you specify. Unlike GenerateDataKeyPair, this operation
does not return a plaintext private key.

To generate a data key pair, you must specify a symmetric customer
master key (CMK) to encrypt the private key in the data key pair. You
cannot use an asymmetric CMK. To get the type of your CMK, use the
C<KeySpec> field in the DescribeKey response.

You can use the public key that C<GenerateDataKeyPairWithoutPlaintext>
returns to encrypt data or verify a signature outside of AWS KMS. Then,
store the encrypted private key with the data. When you are ready to
decrypt data or sign a message, you can use the Decrypt operation to
decrypt the encrypted private key.

C<GenerateDataKeyPairWithoutPlaintext> returns a unique data key pair
for each request. The bytes in the key are not related to the caller or
CMK that is used to encrypt the private key.

You can use the optional encryption context to add additional security
to the encryption operation. If you specify an C<EncryptionContext>,
you must specify the same encryption context (a case-sensitive exact
match) when decrypting the encrypted data key. Otherwise, the request
to decrypt fails with an InvalidCiphertextException. For more
information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<AWS Key Management Service Developer Guide>.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
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

Generates a unique symmetric data key. This operation returns a data
key that is encrypted under a customer master key (CMK) that you
specify. To request an asymmetric data key pair, use the
GenerateDataKeyPair or GenerateDataKeyPairWithoutPlaintext operations.

C<GenerateDataKeyWithoutPlaintext> is identical to the GenerateDataKey
operation except that returns only the encrypted copy of the data key.
This operation is useful for systems that need to encrypt data at some
point, but not immediately. When you need to encrypt the data, you call
the Decrypt operation on the encrypted copy of the key.

It's also useful in distributed systems with different levels of trust.
For example, you might store encrypted data in containers. One
component of your system creates new containers and stores an encrypted
data key with each container. Then, a different component puts the data
into the containers. That component first decrypts the data key, uses
the plaintext data key to encrypt data, puts the encrypted data into
the container, and then destroys the plaintext data key. In this
system, the component that creates the containers never sees the
plaintext data key.

C<GenerateDataKeyWithoutPlaintext> returns a unique data key for each
request. The bytes in the keys are not related to the caller or CMK
that is used to encrypt the private key.

To generate a data key, you must specify the symmetric customer master
key (CMK) that is used to encrypt the data key. You cannot use an
asymmetric CMK to generate a data key. To get the type of your CMK, use
the DescribeKey operation.

If the operation succeeds, you will find the encrypted copy of the data
key in the C<CiphertextBlob> field.

You can use the optional encryption context to add additional security
to the encryption operation. If you specify an C<EncryptionContext>,
you must specify the same encryption context (a case-sensitive exact
match) when decrypting the encrypted data key. Otherwise, the request
to decrypt fails with an InvalidCiphertextException. For more
information, see Encryption Context
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#encrypt_context)
in the I<AWS Key Management Service Developer Guide>.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 GenerateRandom

=over

=item [CustomKeyStoreId => Str]

=item [NumberOfBytes => Int]


=back

Each argument is described in detail in: L<Paws::KMS::GenerateRandom>

Returns: a L<Paws::KMS::GenerateRandomResponse> instance

Returns a random byte string that is cryptographically secure.

By default, the random byte string is generated in AWS KMS. To generate
the byte string in the AWS CloudHSM cluster that is associated with a
custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html),
specify the custom key store ID.

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
key material
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
is enabled for the specified customer master key (CMK).

You cannot enable automatic rotation of asymmetric CMKs, CMKs with
imported key material, or CMKs in a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).
The key rotation status for these CMKs is always C<false>.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.

=over

=item *

Disabled: The key rotation status does not change when you disable a
CMK. However, while the CMK is disabled, AWS KMS does not rotate the
backing key.

=item *

Pending deletion: While a CMK is pending deletion, its key rotation
status is C<false> and AWS KMS does not rotate the backing key. If you
cancel the deletion, the original key rotation status is restored.

=back

To perform this operation on a CMK in a different AWS account, specify
the key ARN in the value of the C<KeyId> parameter.


=head2 GetParametersForImport

=over

=item KeyId => Str

=item WrappingAlgorithm => Str

=item WrappingKeySpec => Str


=back

Each argument is described in detail in: L<Paws::KMS::GetParametersForImport>

Returns: a L<Paws::KMS::GetParametersForImportResponse> instance

Returns the items you need to import key material into a symmetric,
customer managed customer master key (CMK). For more information about
importing key material into AWS KMS, see Importing Key Material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
in the I<AWS Key Management Service Developer Guide>.

This operation returns a public key and an import token. Use the public
key to encrypt the symmetric key material. Store the import token to
send with a subsequent ImportKeyMaterial request.

You must specify the key ID of the symmetric CMK into which you will
import key material. This CMK's C<Origin> must be C<EXTERNAL>. You must
also specify the wrapping algorithm and type of wrapping key (public
key) that you will use to encrypt the key material. You cannot perform
this operation on an asymmetric CMK or on any CMK in a different AWS
account.

To import key material, you must use the public key and import token
from the same response. These items are valid for 24 hours. The
expiration date and time appear in the C<GetParametersForImport>
response. You cannot use an expired token in an ImportKeyMaterial
request. If your key and token expire, send another
C<GetParametersForImport> request.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 GetPublicKey

=over

=item KeyId => Str

=item [GrantTokens => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::KMS::GetPublicKey>

Returns: a L<Paws::KMS::GetPublicKeyResponse> instance

Returns the public key of an asymmetric CMK. Unlike the private key of
a asymmetric CMK, which never leaves AWS KMS unencrypted, callers with
C<kms:GetPublicKey> permission can download the public key of an
asymmetric CMK. You can share the public key to allow others to encrypt
messages and verify signatures outside of AWS KMS. For information
about symmetric and asymmetric CMKs, see Using Symmetric and Asymmetric
CMKs
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<AWS Key Management Service Developer Guide>.

You do not need to download the public key. Instead, you can use the
public key within AWS KMS by calling the Encrypt, ReEncrypt, or Verify
operations with the identifier of an asymmetric CMK. When you use the
public key within AWS KMS, you benefit from the authentication,
authorization, and logging that are part of every AWS KMS operation.
You also reduce of risk of encrypting data that cannot be decrypted.
These features are not effective outside of AWS KMS. For details, see
Special Considerations for Downloading Public Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/download-public-key.html#download-public-key-considerations).

To help you use the public key safely outside of AWS KMS,
C<GetPublicKey> returns important information about the public key in
the response, including:

=over

=item *

CustomerMasterKeySpec
(https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-CustomerMasterKeySpec):
The type of key material in the public key, such as C<RSA_4096> or
C<ECC_NIST_P521>.

=item *

KeyUsage
(https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-KeyUsage):
Whether the key is used for encryption or signing.

=item *

EncryptionAlgorithms
(https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-EncryptionAlgorithms)
or SigningAlgorithms
(https://docs.aws.amazon.com/kms/latest/APIReference/API_GetPublicKey.html#KMS-GetPublicKey-response-SigningAlgorithms):
A list of the encryption algorithms or the signing algorithms for the
key.

=back

Although AWS KMS cannot enforce these restrictions on external
operations, it is crucial that you use this information to prevent the
public key from being used improperly. For example, you can prevent a
public signing key from being used encrypt data, or prevent a public
key from being used with an encryption algorithm that is not supported
by AWS KMS. You can also avoid errors, such as using the wrong signing
algorithm in a verification operation.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


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

Imports key material into an existing symmetric AWS KMS customer master
key (CMK) that was created without key material. After you successfully
import key material into a CMK, you can reimport the same key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#reimport-key-material)
into that CMK, but you cannot import different key material.

You cannot perform this operation on an asymmetric CMK or on any CMK in
a different AWS account. For more information about creating CMKs with
no key material and then importing key material, see Importing Key
Material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html)
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

The import token that GetParametersForImport returned. You must use a
public key and token from the same C<GetParametersForImport> response.

=item *

Whether the key material expires and if so, when. If you set an
expiration date, AWS KMS deletes the key material from the CMK on the
specified date, and the CMK becomes unusable. To use the CMK again, you
must reimport the same key material. The only way to change an
expiration date is by reimporting the same key material and specifying
a new expiration date.

=back

When this operation is successful, the key state of the CMK changes
from C<PendingImport> to C<Enabled>, and you can use the CMK.

If this operation fails, use the exception to help determine the
problem. If the error is related to the key material, the import token,
or wrapping key, use GetParametersForImport to get a new public key and
import token for the CMK and repeat the import procedure. For help, see
How To Import Key Material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html#importing-keys-overview)
in the I<AWS Key Management Service Developer Guide>.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 ListAliases

=over

=item [KeyId => Str]

=item [Limit => Int]

=item [Marker => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ListAliases>

Returns: a L<Paws::KMS::ListAliasesResponse> instance

Gets a list of aliases in the caller's AWS account and region. You
cannot list aliases in other accounts. For more information about
aliases, see CreateAlias.

By default, the ListAliases command returns all aliases in the account
and region. To get only the aliases that point to a particular customer
master key (CMK), use the C<KeyId> parameter.

The C<ListAliases> response can include aliases that you created and
associated with your customer managed CMKs, and aliases that AWS
created and associated with AWS managed CMKs in your account. You can
recognize AWS aliases because their names have the format
C<aws/E<lt>service-nameE<gt>>, such as C<aws/dynamodb>.

The response might also include aliases that have no C<TargetKeyId>
field. These are predefined aliases that AWS has created but has not
yet associated with a CMK. Aliases that AWS creates in your account,
including predefined aliases, do not count against your AWS KMS aliases
quota
(https://docs.aws.amazon.com/kms/latest/developerguide/limits.html#aliases-limit).


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
the key ARN in the value of the C<KeyId> parameter.


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
account and Region.


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
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 ReEncrypt

=over

=item CiphertextBlob => Str

=item DestinationKeyId => Str

=item [DestinationEncryptionAlgorithm => Str]

=item [DestinationEncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [SourceEncryptionAlgorithm => Str]

=item [SourceEncryptionContext => L<Paws::KMS::EncryptionContextType>]

=item [SourceKeyId => Str]


=back

Each argument is described in detail in: L<Paws::KMS::ReEncrypt>

Returns: a L<Paws::KMS::ReEncryptResponse> instance

Decrypts ciphertext and then reencrypts it entirely within AWS KMS. You
can use this operation to change the customer master key (CMK) under
which data is encrypted, such as when you manually rotate
(https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html#rotate-keys-manually)
a CMK or change the CMK that protects a ciphertext. You can also use it
to reencrypt ciphertext under the same CMK, such as to change the
encryption context of a ciphertext.

The C<ReEncrypt> operation can decrypt ciphertext that was encrypted by
using an AWS KMS CMK in an AWS KMS operation, such as Encrypt or
GenerateDataKey. It can also decrypt ciphertext that was encrypted by
using the public key of an asymmetric CMK outside of AWS KMS. However,
it cannot decrypt ciphertext produced by other libraries, such as the
AWS Encryption SDK
(https://docs.aws.amazon.com/encryption-sdk/latest/developer-guide/) or
Amazon S3 client-side encryption
(https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html).
These libraries return a ciphertext format that is incompatible with
AWS KMS.

When you use the C<ReEncrypt> operation, you need to provide
information for the decrypt operation and the subsequent encrypt
operation.

=over

=item *

If your ciphertext was encrypted under an asymmetric CMK, you must
identify the I<source CMK>, that is, the CMK that encrypted the
ciphertext. You must also supply the encryption algorithm that was
used. This information is required to decrypt the data.

=item *

It is optional, but you can specify a source CMK even when the
ciphertext was encrypted under a symmetric CMK. This ensures that the
ciphertext is decrypted only by using a particular CMK. If the CMK that
you specify cannot decrypt the ciphertext, the C<ReEncrypt> operation
fails.

=item *

To reencrypt the data, you must specify the I<destination CMK>, that
is, the CMK that re-encrypts the data after it is decrypted. You can
select a symmetric or asymmetric CMK. If the destination CMK is an
asymmetric CMK, you must also provide the encryption algorithm. The
algorithm that you choose must be compatible with the CMK.

When you use an asymmetric CMK to encrypt or reencrypt data, be sure to
record the CMK and encryption algorithm that you choose. You will be
required to provide the same CMK and encryption algorithm when you
decrypt the data. If the CMK and algorithm do not match the values used
to encrypt the data, the decrypt operation fails.

You are not required to supply the CMK ID and encryption algorithm when
you decrypt with symmetric CMKs because AWS KMS stores this information
in the ciphertext blob. AWS KMS cannot store metadata in ciphertext
generated with asymmetric keys. The standard format for asymmetric key
ciphertext does not include configurable fields.

=back

Unlike other AWS KMS API operations, C<ReEncrypt> callers must have two
permissions:

=over

=item *

C<kms:EncryptFrom> permission on the source CMK

=item *

C<kms:EncryptTo> permission on the destination CMK

=back

To permit reencryption from

or to a CMK, include the C<"kms:ReEncrypt*"> permission in your key
policy
(https://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html).
This permission is automatically included in the key policy when you
use the console to create a CMK. But you must include it manually when
you create a CMK programmatically or when you use the PutKeyPolicy
operation set a key policy.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


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
the key ARN in the value of the C<KeyId> parameter.


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
When this operation is successful, the key state of the CMK changes to
C<PendingDeletion>. Before the waiting period ends, you can use
CancelKeyDeletion to cancel the deletion of the CMK. After the waiting
period ends, AWS KMS deletes the CMK and all AWS KMS data associated
with it, including all aliases that refer to it.

Deleting a CMK is a destructive and potentially dangerous operation.
When a CMK is deleted, all data that was encrypted under the CMK is
unrecoverable. To prevent the use of a CMK without deleting it, use
DisableKey.

If you schedule deletion of a CMK from a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html),
when the waiting period expires, C<ScheduleKeyDeletion> deletes the CMK
from AWS KMS. Then AWS KMS makes a best effort to delete the key
material from the associated AWS CloudHSM cluster. However, you might
need to manually delete the orphaned key material
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-orphaned-key)
from the cluster and its backups.

You cannot perform this operation on a CMK in a different AWS account.

For more information about scheduling a CMK for deletion, see Deleting
Customer Master Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/deleting-keys.html)
in the I<AWS Key Management Service Developer Guide>.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 Sign

=over

=item KeyId => Str

=item Message => Str

=item SigningAlgorithm => Str

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [MessageType => Str]


=back

Each argument is described in detail in: L<Paws::KMS::Sign>

Returns: a L<Paws::KMS::SignResponse> instance

Creates a digital signature
(https://en.wikipedia.org/wiki/Digital_signature) for a message or
message digest by using the private key in an asymmetric CMK. To verify
the signature, use the Verify operation, or use the public key in the
same asymmetric CMK outside of AWS KMS. For information about symmetric
and asymmetric CMKs, see Using Symmetric and Asymmetric CMKs
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<AWS Key Management Service Developer Guide>.

Digital signatures are generated and verified by using asymmetric key
pair, such as an RSA or ECC pair that is represented by an asymmetric
customer master key (CMK). The key owner (or an authorized user) uses
their private key to sign a message. Anyone with the public key can
verify that the message was signed with that particular private key and
that the message hasn't changed since it was signed.

To use the C<Sign> operation, provide the following information:

=over

=item *

Use the C<KeyId> parameter to identify an asymmetric CMK with a
C<KeyUsage> value of C<SIGN_VERIFY>. To get the C<KeyUsage> value of a
CMK, use the DescribeKey operation. The caller must have C<kms:Sign>
permission on the CMK.

=item *

Use the C<Message> parameter to specify the message or message digest
to sign. You can submit messages of up to 4096 bytes. To sign a larger
message, generate a hash digest of the message, and then provide the
hash digest in the C<Message> parameter. To indicate whether the
message is a full message or a digest, use the C<MessageType>
parameter.

=item *

Choose a signing algorithm that is compatible with the CMK.

=back

When signing a message, be sure to record the CMK and the signing
algorithm. This information is required to verify the signature.

To verify the signature that this operation generates, use the Verify
operation. Or use the GetPublicKey operation to download the public key
and then use the public key to verify the signature outside of AWS KMS.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 TagResource

=over

=item KeyId => Str

=item Tags => ArrayRef[L<Paws::KMS::Tag>]


=back

Each argument is described in detail in: L<Paws::KMS::TagResource>

Returns: nothing

Adds or edits tags for a customer master key (CMK). You cannot perform
this operation on a CMK in a different AWS account.

Each tag consists of a tag key and a tag value. Tag keys and tag values
are both required, but tag values can be empty (null) strings.

You can only use a tag key once for each CMK. If you use the tag key
again, AWS KMS replaces the current tag value with the specified value.

For information about the rules that apply to tag keys and tag values,
see User-Defined Tag Restrictions
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
in the I<AWS Billing and Cost Management User Guide>.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 UntagResource

=over

=item KeyId => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::KMS::UntagResource>

Returns: nothing

Removes the specified tags from the specified customer master key
(CMK). You cannot perform this operation on a CMK in a different AWS
account.

To remove a tag, specify the tag key. To change the tag value of an
existing tag key, use TagResource.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 UpdateAlias

=over

=item AliasName => Str

=item TargetKeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::UpdateAlias>

Returns: nothing

Associates an existing AWS KMS alias with a different customer master
key (CMK). Each alias is associated with only one CMK at a time,
although a CMK can have multiple aliases. The alias and the CMK must be
in the same AWS account and region. You cannot perform this operation
on an alias in a different AWS account.

The current and new CMK must be the same type (both symmetric or both
asymmetric), and they must have the same key usage (C<ENCRYPT_DECRYPT>
or C<SIGN_VERIFY>). This restriction prevents errors in code that uses
aliases. If you must assign an alias to a different type of CMK, use
DeleteAlias to delete the old alias and CreateAlias to create a new
alias.

You cannot use C<UpdateAlias> to change an alias name. To change an
alias name, use DeleteAlias to delete the old alias and CreateAlias to
create a new alias.

Because an alias is not a property of a CMK, you can create, update,
and delete the aliases of a CMK without affecting the CMK. Also,
aliases do not appear in the response from the DescribeKey operation.
To get the aliases of all CMKs in the account, use the ListAliases
operation.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 UpdateCustomKeyStore

=over

=item CustomKeyStoreId => Str

=item [CloudHsmClusterId => Str]

=item [KeyStorePassword => Str]

=item [NewCustomKeyStoreName => Str]


=back

Each argument is described in detail in: L<Paws::KMS::UpdateCustomKeyStore>

Returns: a L<Paws::KMS::UpdateCustomKeyStoreResponse> instance

Changes the properties of a custom key store. Use the
C<CustomKeyStoreId> parameter to identify the custom key store you want
to edit. Use the remaining parameters to change the properties of the
custom key store.

You can only update a custom key store that is disconnected. To
disconnect the custom key store, use DisconnectCustomKeyStore. To
reconnect the custom key store after the update completes, use
ConnectCustomKeyStore. To find the connection state of a custom key
store, use the DescribeCustomKeyStores operation.

Use the parameters of C<UpdateCustomKeyStore> to edit your keystore
settings.

=over

=item *

Use the B<NewCustomKeyStoreName> parameter to change the friendly name
of the custom key store to the value that you specify.

=item *

Use the B<KeyStorePassword> parameter tell AWS KMS the current password
of the C<kmsuser> crypto user (CU)
(https://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)
in the associated AWS CloudHSM cluster. You can use this parameter to
fix connection failures
(https://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html#fix-keystore-password)
that occur when AWS KMS cannot log into the associated cluster because
the C<kmsuser> password has changed. This value does not change the
password in the AWS CloudHSM cluster.

=item *

Use the B<CloudHsmClusterId> parameter to associate the custom key
store with a different, but related, AWS CloudHSM cluster. You can use
this parameter to repair a custom key store if its AWS CloudHSM cluster
becomes corrupted or is deleted, or when you need to create or restore
a cluster from a backup.

=back

If the operation succeeds, it returns a JSON object with no properties.

This operation is part of the Custom Key Store feature
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
feature in AWS KMS, which combines the convenience and extensive
integration of AWS KMS with the isolation and control of a
single-tenant key store.


=head2 UpdateKeyDescription

=over

=item Description => Str

=item KeyId => Str


=back

Each argument is described in detail in: L<Paws::KMS::UpdateKeyDescription>

Returns: nothing

Updates the description of a customer master key (CMK). To see the
description of a CMK, use DescribeKey.

You cannot perform this operation on a CMK in a different AWS account.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 Verify

=over

=item KeyId => Str

=item Message => Str

=item Signature => Str

=item SigningAlgorithm => Str

=item [GrantTokens => ArrayRef[Str|Undef]]

=item [MessageType => Str]


=back

Each argument is described in detail in: L<Paws::KMS::Verify>

Returns: a L<Paws::KMS::VerifyResponse> instance

Verifies a digital signature that was generated by the Sign operation.

Verification confirms that an authorized user signed the message with
the specified CMK and signing algorithm, and the message hasn't changed
since it was signed. If the signature is verified, the value of the
C<SignatureValid> field in the response is C<True>. If the signature
verification fails, the C<Verify> operation fails with an
C<KMSInvalidSignatureException> exception.

A digital signature is generated by using the private key in an
asymmetric CMK. The signature is verified by using the public key in
the same asymmetric CMK. For information about symmetric and asymmetric
CMKs, see Using Symmetric and Asymmetric CMKs
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<AWS Key Management Service Developer Guide>.

To verify a digital signature, you can use the C<Verify> operation.
Specify the same asymmetric CMK, message, and signing algorithm that
were used to produce the signature.

You can also verify the digital signature by using the public key of
the CMK outside of AWS KMS. Use the GetPublicKey operation to download
the public key in the asymmetric CMK and then use the public key to
verify the signature outside of AWS KMS. The advantage of using the
C<Verify> operation is that it is performed within AWS KMS. As a
result, it's easy to call, the operation is performed within the FIPS
boundary, it is logged in AWS CloudTrail, and you can use key policy
and IAM policy to determine who is authorized to use the CMK to verify
signatures.

The CMK that you use for this operation must be in a compatible key
state. For details, see How Key State Affects Use of a Customer Master
Key
(https://docs.aws.amazon.com/kms/latest/developerguide/key-state.html)
in the I<AWS Key Management Service Developer Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAliases(sub { },[KeyId => Str, Limit => Int, Marker => Str])

=head2 ListAllAliases([KeyId => Str, Limit => Int, Marker => Str])


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

