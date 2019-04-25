
package Paws::StorageGateway::UpdateGatewaySoftwareNow;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewaySoftwareNow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::UpdateGatewaySoftwareNowOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::UpdateGatewaySoftwareNow - Arguments for method UpdateGatewaySoftwareNow on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGatewaySoftwareNow on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method UpdateGatewaySoftwareNow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGatewaySoftwareNow.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To update a gateway's VM software
    # Updates the gateway virtual machine (VM) software. The request immediately
    # triggers the software update.
    my $UpdateGatewaySoftwareNowOutput =
      $storagegateway->UpdateGatewaySoftwareNow(
      {
        'GatewayARN' =>
          'arn:aws:storagegateway:us-east-1:111122223333:gateway/sgw-12A3456B'
      }
      );

    # Results:
    my $GatewayARN = $UpdateGatewaySoftwareNowOutput->GatewayARN;

    # Returns a L<Paws::StorageGateway::UpdateGatewaySoftwareNowOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/UpdateGatewaySoftwareNow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGatewaySoftwareNow in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

