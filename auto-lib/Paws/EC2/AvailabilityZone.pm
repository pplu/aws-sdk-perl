package Paws::EC2::AvailabilityZone;
  use Moo;  use Types::Standard qw/ArrayRef Str/;
  use Paws::EC2::Types qw/EC2_AvailabilityZoneMessage/;
  has Messages => (is => 'ro', isa => ArrayRef[EC2_AvailabilityZoneMessage]);
  has RegionName => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has ZoneId => (is => 'ro', isa => Str);
  has ZoneName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegionName' => {
                                 'type' => 'Str'
                               },
               'State' => {
                            'type' => 'Str'
                          },
               'ZoneName' => {
                               'type' => 'Str'
                             },
               'Messages' => {
                               'type' => 'ArrayRef[EC2_AvailabilityZoneMessage]',
                               'class' => 'Paws::EC2::AvailabilityZoneMessage'
                             },
               'ZoneId' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Messages' => 'messageSet',
                       'ZoneId' => 'zoneId',
                       'ZoneName' => 'zoneName',
                       'State' => 'zoneState',
                       'RegionName' => 'regionName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AvailabilityZone

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AvailabilityZone object:

  $service_obj->Method(Att1 => { Messages => $value, ..., ZoneName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AvailabilityZone object:

  $result = $service_obj->Method(...);
  $result->Att1->Messages

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[EC2_AvailabilityZoneMessage]

  Any messages about the Availability Zone.


=head2 RegionName => Str

  The name of the Region.


=head2 State => Str

  The state of the Availability Zone.


=head2 ZoneId => Str

  The ID of the Availability Zone.


=head2 ZoneName => Str

  The name of the Availability Zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
