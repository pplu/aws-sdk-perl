
package Paws::KMS::ConnectCustomKeyStore;
  use Moose;
  has CustomKeyStoreId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConnectCustomKeyStore');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ConnectCustomKeyStoreResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ConnectCustomKeyStore - Arguments for method ConnectCustomKeyStore on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConnectCustomKeyStore on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method ConnectCustomKeyStore.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConnectCustomKeyStore.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    my $ConnectCustomKeyStoreResponse = $kms->ConnectCustomKeyStore(
      CustomKeyStoreId => 'MyCustomKeyStoreIdType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/ConnectCustomKeyStore>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomKeyStoreId => Str

Enter the key store ID of the custom key store that you want to
connect. To find the ID of a custom key store, use the
DescribeCustomKeyStores operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConnectCustomKeyStore in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

