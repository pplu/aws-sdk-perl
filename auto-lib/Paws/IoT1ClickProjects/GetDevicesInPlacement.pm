
package Paws::IoT1ClickProjects::GetDevicesInPlacement;
  use Moose;
  has PlacementName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'placementName', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDevicesInPlacement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{projectName}/placements/{placementName}/devices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickProjects::GetDevicesInPlacementResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::GetDevicesInPlacement - Arguments for method GetDevicesInPlacement on L<Paws::IoT1ClickProjects>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDevicesInPlacement on the
L<AWS IoT 1-Click Projects Service|Paws::IoT1ClickProjects> service. Use the attributes of this class
as arguments to method GetDevicesInPlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDevicesInPlacement.

=head1 SYNOPSIS

    my $projects.iot1click = Paws->service('IoT1ClickProjects');
    my $GetDevicesInPlacementResponse =
      $projects . iot1click->GetDevicesInPlacement(
      PlacementName => 'MyPlacementName',
      ProjectName   => 'MyProjectName',

      );

    # Results:
    my $Devices = $GetDevicesInPlacementResponse->Devices;

   # Returns a L<Paws::IoT1ClickProjects::GetDevicesInPlacementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/projects.iot1click/GetDevicesInPlacement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PlacementName => Str

The name of the placement to get the devices from.



=head2 B<REQUIRED> ProjectName => Str

The name of the project containing the placement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDevicesInPlacement in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

