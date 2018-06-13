
package Paws::StorageGateway::RetrieveTapeRecoveryPoint;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveTapeRecoveryPoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::RetrieveTapeRecoveryPointOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::RetrieveTapeRecoveryPoint - Arguments for method RetrieveTapeRecoveryPoint on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RetrieveTapeRecoveryPoint on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method RetrieveTapeRecoveryPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RetrieveTapeRecoveryPoint.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To retrieve the recovery point of a virtual tape
    # Retrieves the recovery point for the specified virtual tape.
    my $RetrieveTapeRecoveryPointOutput =
      $storagegateway->RetrieveTapeRecoveryPoint(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B',
        'TapeARN' =>
          'arn:aws:storagegateway:us-east-1:999999999999:tape/TEST0AA2AF'
      }
      );

    # Results:
    my $TapeARN = $RetrieveTapeRecoveryPointOutput->TapeARN;

    # Returns a L<Paws::StorageGateway::RetrieveTapeRecoveryPointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/RetrieveTapeRecoveryPoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str





=head2 B<REQUIRED> TapeARN => Str

The Amazon Resource Name (ARN) of the virtual tape for which you want
to retrieve the recovery point.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RetrieveTapeRecoveryPoint in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

