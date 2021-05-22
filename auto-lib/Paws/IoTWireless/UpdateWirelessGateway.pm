
package Paws::IoTWireless::UpdateWirelessGateway;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has JoinEuiFilters => (is => 'ro', isa => 'ArrayRef[ArrayRef[Str|Undef]]');
  has Name => (is => 'ro', isa => 'Str');
  has NetIdFilters => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWirelessGateway');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/wireless-gateways/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdateWirelessGatewayResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdateWirelessGateway - Arguments for method UpdateWirelessGateway on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWirelessGateway on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdateWirelessGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWirelessGateway.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdateWirelessGatewayResponse =
      $api . iotwireless->UpdateWirelessGateway(
      Id             => 'MyWirelessGatewayId',
      Description    => 'MyDescription',         # OPTIONAL
      JoinEuiFilters => [
        [ 'MyJoinEui', ... ], ...                # min: 2, max: 2
      ],                                         # OPTIONAL
      Name         => 'MyWirelessGatewayName',   # OPTIONAL
      NetIdFilters => [ 'MyNetId', ... ],        # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdateWirelessGateway>

=head1 ATTRIBUTES


=head2 Description => Str

A new description of the resource.



=head2 B<REQUIRED> Id => Str

The ID of the resource to update.



=head2 JoinEuiFilters => ArrayRef[ArrayRef[Str|Undef]]





=head2 Name => Str

The new name of the resource.



=head2 NetIdFilters => ArrayRef[Str|Undef]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWirelessGateway in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

