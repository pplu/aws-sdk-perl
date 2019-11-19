package Paws::EC2::VolumeStatusItem;
  use Moo;  use Types::Standard qw/ArrayRef Str/;
  use Paws::EC2::Types qw/EC2_VolumeStatusInfo EC2_VolumeStatusEvent EC2_VolumeStatusAction/;
  has Actions => (is => 'ro', isa => ArrayRef[EC2_VolumeStatusAction]);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has Events => (is => 'ro', isa => ArrayRef[EC2_VolumeStatusEvent]);
  has VolumeId => (is => 'ro', isa => Str);
  has VolumeStatus => (is => 'ro', isa => EC2_VolumeStatusInfo);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VolumeId' => {
                               'type' => 'Str'
                             },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'Events' => {
                             'type' => 'ArrayRef[EC2_VolumeStatusEvent]',
                             'class' => 'Paws::EC2::VolumeStatusEvent'
                           },
               'Actions' => {
                              'class' => 'Paws::EC2::VolumeStatusAction',
                              'type' => 'ArrayRef[EC2_VolumeStatusAction]'
                            },
               'VolumeStatus' => {
                                   'class' => 'Paws::EC2::VolumeStatusInfo',
                                   'type' => 'EC2_VolumeStatusInfo'
                                 }
             },
  'NameInRequest' => {
                       'VolumeStatus' => 'volumeStatus',
                       'Actions' => 'actionsSet',
                       'Events' => 'eventsSet',
                       'VolumeId' => 'volumeId',
                       'AvailabilityZone' => 'availabilityZone'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VolumeStatusItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VolumeStatusItem object:

  $service_obj->Method(Att1 => { Actions => $value, ..., VolumeStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VolumeStatusItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[EC2_VolumeStatusAction]

  The details of the operation.


=head2 AvailabilityZone => Str

  The Availability Zone of the volume.


=head2 Events => ArrayRef[EC2_VolumeStatusEvent]

  A list of events associated with the volume.


=head2 VolumeId => Str

  The volume ID.


=head2 VolumeStatus => EC2_VolumeStatusInfo

  The volume status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
