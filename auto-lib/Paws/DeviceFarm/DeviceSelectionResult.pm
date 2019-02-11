package Paws::DeviceFarm::DeviceSelectionResult;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::DeviceFilter]', request_name => 'filters', traits => ['NameInRequest']);
  has MatchedDevicesCount => (is => 'ro', isa => 'Int', request_name => 'matchedDevicesCount', traits => ['NameInRequest']);
  has MaxDevices => (is => 'ro', isa => 'Int', request_name => 'maxDevices', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::DeviceSelectionResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::DeviceSelectionResult object:

  $service_obj->Method(Att1 => { Filters => $value, ..., MaxDevices => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::DeviceSelectionResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Filters

=head1 DESCRIPTION

Contains the run results requested by the device selection
configuration as well as how many devices were returned. For an example
of the JSON response syntax, see ScheduleRun.

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::DeviceFarm::DeviceFilter>]

  The filters in a device selection result.


=head2 MatchedDevicesCount => Int

  The number of devices that matched the device filter selection
criteria.


=head2 MaxDevices => Int

  The maximum number of devices to be selected by a device filter and
included in a test run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

