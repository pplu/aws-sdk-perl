
package Paws::StorageGateway::DescribeGatewayInformation;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGatewayInformation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::DescribeGatewayInformationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeGatewayInformation - Arguments for method DescribeGatewayInformation on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGatewayInformation on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method DescribeGatewayInformation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGatewayInformation.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
  # To describe metadata about the gateway
  # Returns metadata about a gateway such as its name, network interfaces,
  # configured time zone, and the state (whether the gateway is running or not).
    my $DescribeGatewayInformationOutput =
      $storagegateway->DescribeGatewayInformation( 'GatewayARN' =>
        'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B' );

    # Results:
    my $GatewayARN  = $DescribeGatewayInformationOutput->GatewayARN;
    my $GatewayId   = $DescribeGatewayInformationOutput->GatewayId;
    my $GatewayName = $DescribeGatewayInformationOutput->GatewayName;
    my $GatewayNetworkInterfaces =
      $DescribeGatewayInformationOutput->GatewayNetworkInterfaces;
    my $GatewayState    = $DescribeGatewayInformationOutput->GatewayState;
    my $GatewayTimezone = $DescribeGatewayInformationOutput->GatewayTimezone;
    my $GatewayType     = $DescribeGatewayInformationOutput->GatewayType;
    my $LastSoftwareUpdate =
      $DescribeGatewayInformationOutput->LastSoftwareUpdate;
    my $NextUpdateAvailabilityDate =
      $DescribeGatewayInformationOutput->NextUpdateAvailabilityDate;

   # Returns a L<Paws::StorageGateway::DescribeGatewayInformationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/DescribeGatewayInformation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGatewayInformation in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

