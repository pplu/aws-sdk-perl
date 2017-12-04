package Paws::EC2::VolumeStatusItem;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeStatusAction]', request_name => 'actionsSet', traits => ['NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeStatusEvent]', request_name => 'eventsSet', traits => ['NameInRequest']);
  has VolumeId => (is => 'ro', isa => 'Str', request_name => 'volumeId', traits => ['NameInRequest']);
  has VolumeStatus => (is => 'ro', isa => 'Paws::EC2::VolumeStatusInfo', request_name => 'volumeStatus', traits => ['NameInRequest']);
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


=head2 Actions => ArrayRef[L<Paws::EC2::VolumeStatusAction>]

  The details of the operation.


=head2 AvailabilityZone => Str

  The Availability Zone of the volume.


=head2 Events => ArrayRef[L<Paws::EC2::VolumeStatusEvent>]

  A list of events associated with the volume.


=head2 VolumeId => Str

  The volume ID.


=head2 VolumeStatus => L<Paws::EC2::VolumeStatusInfo>

  The volume status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
