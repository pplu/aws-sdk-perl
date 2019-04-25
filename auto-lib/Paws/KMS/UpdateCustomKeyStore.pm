
package Paws::KMS::UpdateCustomKeyStore;
  use Moose;
  has CloudHsmClusterId => (is => 'ro', isa => 'Str');
  has CustomKeyStoreId => (is => 'ro', isa => 'Str', required => 1);
  has KeyStorePassword => (is => 'ro', isa => 'Str');
  has NewCustomKeyStoreName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCustomKeyStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::UpdateCustomKeyStoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::UpdateCustomKeyStore - Arguments for method UpdateCustomKeyStore on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCustomKeyStore on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method UpdateCustomKeyStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCustomKeyStore.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    my $UpdateCustomKeyStoreResponse = $kms->UpdateCustomKeyStore(
      CustomKeyStoreId      => 'MyCustomKeyStoreIdType',
      CloudHsmClusterId     => 'MyCloudHsmClusterIdType',     # OPTIONAL
      KeyStorePassword      => 'MyKeyStorePasswordType',      # OPTIONAL
      NewCustomKeyStoreName => 'MyCustomKeyStoreNameType',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/UpdateCustomKeyStore>

=head1 ATTRIBUTES


=head2 CloudHsmClusterId => Str

Associates the custom key store with a related AWS CloudHSM cluster.

Enter the cluster ID of the cluster that you used to create the custom
key store or a cluster that shares a backup history with the original
cluster. You cannot use this parameter to associate a custom key store
with a different cluster.

Clusters that share a backup history have the same cluster certificate.
To view the cluster certificate of a cluster, use the DescribeClusters
(http://docs.aws.amazon.com/cloudhsm/latest/APIReference/API_DescribeClusters.html)
operation.



=head2 B<REQUIRED> CustomKeyStoreId => Str

Identifies the custom key store that you want to update. Enter the ID
of the custom key store. To find the ID of a custom key store, use the
DescribeCustomKeyStores operation.



=head2 KeyStorePassword => Str

Enter the current password of the C<kmsuser> crypto user (CU) in the
AWS CloudHSM cluster that is associated with the custom key store.

This parameter tells AWS KMS the current password of the C<kmsuser>
crypto user (CU). It does not set or change the password of any users
in the AWS CloudHSM cluster.



=head2 NewCustomKeyStoreName => Str

Changes the friendly name of the custom key store to the value that you
specify. The custom key store name must be unique in the AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCustomKeyStore in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

