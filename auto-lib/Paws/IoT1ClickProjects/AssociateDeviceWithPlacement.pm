
package Paws::IoT1ClickProjects::AssociateDeviceWithPlacement;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceId', required => 1);
  has DeviceTemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'deviceTemplateName', required => 1);
  has PlacementName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'placementName', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDeviceWithPlacement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickProjects::AssociateDeviceWithPlacementResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::AssociateDeviceWithPlacement - Arguments for method AssociateDeviceWithPlacement on L<Paws::IoT1ClickProjects>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDeviceWithPlacement on the 
L<AWS IoT 1-Click Projects Service|Paws::IoT1ClickProjects> service. Use the attributes of this class
as arguments to method AssociateDeviceWithPlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDeviceWithPlacement.

As an example:

  $service_obj->AssociateDeviceWithPlacement(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>
=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceId => Str

The ID of the physical device to be associated with the given placement
in the project. Note that a mandatory 4 character prefix is required
for all C<deviceId> values.



=head2 B<REQUIRED> DeviceTemplateName => Str

The device template name to associate with the device ID.



=head2 B<REQUIRED> PlacementName => Str

The name of the placement in which to associate the device.



=head2 B<REQUIRED> ProjectName => Str

The name of the project containing the placement in which to associate
the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDeviceWithPlacement in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

