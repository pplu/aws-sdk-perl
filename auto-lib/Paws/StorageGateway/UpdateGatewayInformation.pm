
package Paws::StorageGateway::UpdateGatewayInformation;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has GatewayName => (is => 'ro', isa => 'Str');
  has GatewayTimezone => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewayInformation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateGatewayInformationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateGatewayInformation - Arguments for method UpdateGatewayInformation on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGatewayInformation on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateGatewayInformation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGatewayInformation.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To update a gateway's metadata
    # Updates a gateway's metadata, which includes the gateway's name and time
    # zone.
    my $UpdateGatewayInformationOutput =
      $storagegateway->UpdateGatewayInformation(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B',
        'GatewayName'     => 'MyGateway2',
        'GatewayTimezone' => 'GMT-12:00'
      }
      );

    # Results:
    my $GatewayARN  = $UpdateGatewayInformationOutput->GatewayARN;
    my $GatewayName = $UpdateGatewayInformationOutput->GatewayName;

    # Returns a L<Paws::StorageGateway::UpdateGatewayInformationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateGatewayInformation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str





=head2 GatewayName => Str





=head2 GatewayTimezone => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGatewayInformation in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

