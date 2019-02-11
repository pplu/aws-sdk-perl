
package Paws::KMS::GenerateRandom;
  use Moose;
  has CustomKeyStoreId => (is => 'ro', isa => 'Str');
  has NumberOfBytes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateRandom');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GenerateRandomResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateRandom - Arguments for method GenerateRandom on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateRandom on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GenerateRandom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateRandom.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To generate random data
    # The following example uses AWS KMS to generate 32 bytes of random data.
    my $GenerateRandomResponse = $kms->GenerateRandom(
      {
        'NumberOfBytes' => 32
      }
    );

    # Results:
    my $Plaintext = $GenerateRandomResponse->Plaintext;

    # Returns a L<Paws::KMS::GenerateRandomResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GenerateRandom>

=head1 ATTRIBUTES


=head2 CustomKeyStoreId => Str

Generates the random byte string in the AWS CloudHSM cluster that is
associated with the specified custom key store
(http://docs.aws.amazon.com/kms/latest/developerguide/key-store-overview.html).
To find the ID of a custom key store, use the DescribeCustomKeyStores
operation.



=head2 NumberOfBytes => Int

The length of the byte string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateRandom in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

