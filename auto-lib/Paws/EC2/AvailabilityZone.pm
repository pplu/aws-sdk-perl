package Paws::EC2::AvailabilityZone;
  use Moose;
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AvailabilityZoneMessage]', request_name => 'messageSet', traits => ['NameInRequest']);
  has RegionName => (is => 'ro', isa => 'Str', request_name => 'regionName', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'zoneState', traits => ['NameInRequest']);
  has ZoneId => (is => 'ro', isa => 'Str', request_name => 'zoneId', traits => ['NameInRequest']);
  has ZoneName => (is => 'ro', isa => 'Str', request_name => 'zoneName', traits => ['NameInRequest']);
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


=head2 Messages => ArrayRef[L<Paws::EC2::AvailabilityZoneMessage>]

  Any messages about the Availability Zone.


=head2 RegionName => Str

  The name of the region.


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
