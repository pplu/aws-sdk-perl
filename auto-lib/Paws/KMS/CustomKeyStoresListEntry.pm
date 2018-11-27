package Paws::KMS::CustomKeyStoresListEntry;
  use Moose;
  has CloudHsmClusterId => (is => 'ro', isa => 'Str');
  has ConnectionErrorCode => (is => 'ro', isa => 'Str');
  has ConnectionState => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CustomKeyStoreId => (is => 'ro', isa => 'Str');
  has CustomKeyStoreName => (is => 'ro', isa => 'Str');
  has TrustAnchorCertificate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CustomKeyStoresListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KMS::CustomKeyStoresListEntry object:

  $service_obj->Method(Att1 => { CloudHsmClusterId => $value, ..., TrustAnchorCertificate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KMS::CustomKeyStoresListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudHsmClusterId

=head1 DESCRIPTION

Contains information about each custom key store in the custom key
store list.

=head1 ATTRIBUTES


=head2 CloudHsmClusterId => Str

  A unique identifier for the AWS CloudHSM cluster that is associated
with the custom key store.


=head2 ConnectionErrorCode => Str

  Describes the connection error. Valid values are:

=over

=item *

C<CLUSTER_NOT_FOUND> - AWS KMS cannot find the AWS CloudHSM cluster
with the specified cluster ID.

=item *

C<INSUFFICIENT_CLOUDHSM_HSMS> - The associated AWS CloudHSM cluster
does not contain any active HSMs. To connect a custom key store to its
AWS CloudHSM cluster, the cluster must contain at least one active HSM.

=item *

C<INVALID_CREDENTIALS> - AWS KMS does not have the correct password for
the C<kmsuser> crypto user in the AWS CloudHSM cluster.

=item *

C<NETWORK_ERRORS> - Network errors are preventing AWS KMS from
connecting to the custom key store.

=item *

C<USER_LOCKED_OUT> - The C<kmsuser> CU account is locked out of the
associated AWS CloudHSM cluster due to too many failed password
attempts. Before you can connect your custom key store to its AWS
CloudHSM cluster, you must change the C<kmsuser> account password and
update the password value for the custom key store.

=back

For help with connection failures, see Troubleshooting Custom Key
Stores
(http://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 ConnectionState => Str

  Indicates whether the custom key store is connected to its AWS CloudHSM
cluster.

You can create and use CMKs in your custom key stores only when its
connection state is C<CONNECTED>.

The value is C<DISCONNECTED> if the key store has never been connected
or you use the DisconnectCustomKeyStore operation to disconnect it. If
the value is C<CONNECTED> but you are having trouble using the custom
key store, make sure that its associated AWS CloudHSM cluster is active
and contains at least one active HSM.

A value of C<FAILED> indicates that an attempt to connect was
unsuccessful. For help resolving a connection failure, see
Troubleshooting a Custom Key Store
(http://docs.aws.amazon.com/kms/latest/developerguide/fix-keystore.html)
in the I<AWS Key Management Service Developer Guide>.


=head2 CreationDate => Str

  The date and time when the custom key store was created.


=head2 CustomKeyStoreId => Str

  A unique identifier for the custom key store.


=head2 CustomKeyStoreName => Str

  The user-specified friendly name for the custom key store.


=head2 TrustAnchorCertificate => Str

  The trust anchor certificate of the associated AWS CloudHSM cluster.
When you initialize the cluster
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html#sign-csr),
you create this certificate and save it in the C<customerCA.crt> file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

