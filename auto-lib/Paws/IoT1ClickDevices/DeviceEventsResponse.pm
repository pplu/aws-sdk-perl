# Generated from default/object.tt
package Paws::IoT1ClickDevices::DeviceEventsResponse;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::IoT1ClickDevices::Types qw/IoT1ClickDevices_DeviceEvent/;
  has Events => (is => 'ro', isa => ArrayRef[IoT1ClickDevices_DeviceEvent]);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Events' => {
                             'class' => 'Paws::IoT1ClickDevices::DeviceEvent',
                             'type' => 'ArrayRef[IoT1ClickDevices_DeviceEvent]'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Events' => 'events'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::DeviceEventsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickDevices::DeviceEventsResponse object:

  $service_obj->Method(Att1 => { Events => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickDevices::DeviceEventsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Events

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Events => ArrayRef[IoT1ClickDevices_DeviceEvent]

  An array of zero or more elements describing the event(s) associated
with the device.


=head2 NextToken => Str

  The token to retrieve the next set of results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

