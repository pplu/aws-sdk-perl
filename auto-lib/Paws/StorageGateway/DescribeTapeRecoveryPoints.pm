
package Paws::StorageGateway::DescribeTapeRecoveryPoints;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTapeRecoveryPoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeTapeRecoveryPointsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeTapeRecoveryPoints - Arguments for method DescribeTapeRecoveryPoints on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTapeRecoveryPoints on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeTapeRecoveryPoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTapeRecoveryPoints.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To describe virtual tape recovery points
    # Returns a list of virtual tape recovery points that are available for the
    # specified gateway-VTL.
    my $DescribeTapeRecoveryPointsOutput =
      $storagegateway->DescribeTapeRecoveryPoints(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B',
        'Limit'  => 1,
        'Marker' => 1
      }
      );

    # Results:
    my $GatewayARN = $DescribeTapeRecoveryPointsOutput->GatewayARN;
    my $Marker     = $DescribeTapeRecoveryPointsOutput->Marker;
    my $TapeRecoveryPointInfos =
      $DescribeTapeRecoveryPointsOutput->TapeRecoveryPointInfos;

   # Returns a L<Paws::StorageGateway::DescribeTapeRecoveryPointsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeTapeRecoveryPoints>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str





=head2 Limit => Int

Specifies that the number of virtual tape recovery points that are
described be limited to the specified number.



=head2 Marker => Str

An opaque string that indicates the position at which to begin
describing the virtual tape recovery points.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTapeRecoveryPoints in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

