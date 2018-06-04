package Paws::IoT1ClickProjects::DeviceTemplate;
  use Moose;
  has CallbackOverrides => (is => 'ro', isa => 'Paws::IoT1ClickProjects::DeviceCallbackOverrideMap', request_name => 'callbackOverrides', traits => ['NameInRequest']);
  has DeviceType => (is => 'ro', isa => 'Str', request_name => 'deviceType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::DeviceTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickProjects::DeviceTemplate object:

  $service_obj->Method(Att1 => { CallbackOverrides => $value, ..., DeviceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickProjects::DeviceTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->CallbackOverrides

=head1 DESCRIPTION

An object representing a device for a placement template (see
PlacementTemplate).

=head1 ATTRIBUTES


=head2 CallbackOverrides => L<Paws::IoT1ClickProjects::DeviceCallbackOverrideMap>

  An optional Lambda function to invoke instead of the default Lambda
function provided by the placement template.


=head2 DeviceType => Str

  The device type, which currently must be C<"button">.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

