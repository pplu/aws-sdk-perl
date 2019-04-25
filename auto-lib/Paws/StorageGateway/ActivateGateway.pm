
package Paws::StorageGateway::ActivateGateway;
  use Moose;
  has ActivationKey => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str', required => 1);
  has GatewayRegion => (is => 'ro', isa => 'Str', required => 1);
  has GatewayTimezone => (is => 'ro', isa => 'Str', required => 1);
  has GatewayType => (is => 'ro', isa => 'Str');
  has MediumChangerType => (is => 'ro', isa => 'Str');
  has TapeDriveType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::ActivateGatewayOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ActivateGateway - Arguments for method ActivateGateway on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ActivateGateway on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method ActivateGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ActivateGateway.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To activate the gateway
    # Activates the gateway you previously deployed on your host.
    my $ActivateGatewayOutput = $storagegateway->ActivateGateway(
      {
        'ActivationKey'     => '29AV1-3OFV9-VVIUB-NKT0I-LRO6V',
        'GatewayName'       => 'My_Gateway',
        'GatewayRegion'     => 'us-east-1',
        'GatewayTimezone'   => 'GMT-12:00',
        'GatewayType'       => 'STORED',
        'MediumChangerType' => 'AWS-Gateway-VTL',
        'TapeDriveType'     => 'IBM-ULT3580-TD5'
      }
    );

    # Results:
    my $GatewayARN = $ActivateGatewayOutput->GatewayARN;

    # Returns a L<Paws::StorageGateway::ActivateGatewayOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/ActivateGateway>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivationKey => Str

Your gateway activation key. You can obtain the activation key by
sending an HTTP GET request with redirects enabled to the gateway IP
address (port 80). The redirect URL returned in the response provides
you the activation key for your gateway in the query string parameter
C<activationKey>. It may also include other activation-related
parameters, however, these are merely defaults -- the arguments you
pass to the C<ActivateGateway> API call determine the actual
configuration of your gateway.

For more information, see
https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html
in the Storage Gateway User Guide.



=head2 B<REQUIRED> GatewayName => Str

The name you configured for your gateway.



=head2 B<REQUIRED> GatewayRegion => Str

A value that indicates the region where you want to store your data.
The gateway region specified must be the same region as the region in
your C<Host> header in the request. For more information about
available regions and endpoints for AWS Storage Gateway, see Regions
and Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region) in
the I<Amazon Web Services Glossary>.

Valid Values: "us-east-1", "us-east-2", "us-west-1", "us-west-2",
"ca-central-1", "eu-west-1", "eu-central-1", "eu-west-2", "eu-west-3",
"ap-northeast-1", "ap-northeast-2", "ap-southeast-1", "ap-southeast-2",
"ap-south-1", "sa-east-1"



=head2 B<REQUIRED> GatewayTimezone => Str

A value that indicates the time zone you want to set for the gateway.
The time zone is of the format "GMT-hr:mm" or "GMT+hr:mm". For example,
GMT-4:00 indicates the time is 4 hours behind GMT. GMT+2:00 indicates
the time is 2 hours ahead of GMT. The time zone is used, for example,
for scheduling snapshots and your gateway's maintenance schedule.



=head2 GatewayType => Str

A value that defines the type of gateway to activate. The type
specified is critical to all later functions of the gateway and cannot
be changed after activation. The default value is C<CACHED>.

Valid Values: "STORED", "CACHED", "VTL", "FILE_S3"



=head2 MediumChangerType => Str

The value that indicates the type of medium changer to use for tape
gateway. This field is optional.

Valid Values: "STK-L700", "AWS-Gateway-VTL"



=head2 TapeDriveType => Str

The value that indicates the type of tape drive to use for tape
gateway. This field is optional.

Valid Values: "IBM-ULT3580-TD5"




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ActivateGateway in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

