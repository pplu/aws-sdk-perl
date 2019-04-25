
package Paws::KMS::CreateCustomKeyStore;
  use Moose;
  has CloudHsmClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CustomKeyStoreName => (is => 'ro', isa => 'Str', required => 1);
  has KeyStorePassword => (is => 'ro', isa => 'Str', required => 1);
  has TrustAnchorCertificate => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomKeyStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::CreateCustomKeyStoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::CreateCustomKeyStore - Arguments for method CreateCustomKeyStore on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomKeyStore on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method CreateCustomKeyStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomKeyStore.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    my $CreateCustomKeyStoreResponse = $kms->CreateCustomKeyStore(
      CloudHsmClusterId      => 'MyCloudHsmClusterIdType',
      CustomKeyStoreName     => 'MyCustomKeyStoreNameType',
      KeyStorePassword       => 'MyKeyStorePasswordType',
      TrustAnchorCertificate => 'MyTrustAnchorCertificateType',

    );

    # Results:
    my $CustomKeyStoreId = $CreateCustomKeyStoreResponse->CustomKeyStoreId;

    # Returns a L<Paws::KMS::CreateCustomKeyStoreResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/CreateCustomKeyStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudHsmClusterId => Str

Identifies the AWS CloudHSM cluster for the custom key store. Enter the
cluster ID of any active AWS CloudHSM cluster that is not already
associated with a custom key store. To find the cluster ID, use the
DescribeClusters
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html)
operation.



=head2 B<REQUIRED> CustomKeyStoreName => Str

Specifies a friendly name for the custom key store. The name must be
unique in your AWS account.



=head2 B<REQUIRED> KeyStorePassword => Str

Enter the password of the C<kmsuser> crypto user (CU) account
(http://docs.aws.amazon.com/kms/latest/developerguide/key-store-concepts.html#concept-kmsuser)
in the specified AWS CloudHSM cluster. AWS KMS logs into the cluster as
this user to manage key material on your behalf.

This parameter tells AWS KMS the C<kmsuser> account password; it does
not change the password in the AWS CloudHSM cluster.



=head2 B<REQUIRED> TrustAnchorCertificate => Str

Enter the content of the trust anchor certificate for the cluster. This
is the content of the C<customerCA.crt> file that you created when you
initialized the cluster
(http://docs.aws.amazon.com/cloudhsm/latest/userguide/initialize-cluster.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomKeyStore in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

