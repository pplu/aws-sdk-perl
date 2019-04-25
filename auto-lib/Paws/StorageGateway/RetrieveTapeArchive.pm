
package Paws::StorageGateway::RetrieveTapeArchive;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::RetrieveTapeArchiveOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::RetrieveTapeArchive - Arguments for method RetrieveTapeArchive on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RetrieveTapeArchive on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method RetrieveTapeArchive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RetrieveTapeArchive.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To retrieve an archived tape from the VTS
    # Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a
    # gateway-VTL. Virtual tapes archived in the VTS are not associated with any
    # gateway.
    my $RetrieveTapeArchiveOutput = $storagegateway->RetrieveTapeArchive(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B',
        'TapeARN' =>
          'arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF'
      }
    );

    # Results:
    my $TapeARN = $RetrieveTapeArchiveOutput->TapeARN;

    # Returns a L<Paws::StorageGateway::RetrieveTapeArchiveOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/RetrieveTapeArchive>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str

The Amazon Resource Name (ARN) of the gateway you want to retrieve the
virtual tape to. Use the ListGateways operation to return a list of
gateways for your account and region.

You retrieve archived virtual tapes to only one gateway and the gateway
must be a tape gateway.



=head2 B<REQUIRED> TapeARN => Str

The Amazon Resource Name (ARN) of the virtual tape you want to retrieve
from the virtual tape shelf (VTS).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RetrieveTapeArchive in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

