package Paws::GroundStation::ContactData;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', request_name => 'contactId', traits => ['NameInRequest']);
  has ContactStatus => (is => 'ro', isa => 'Str', request_name => 'contactStatus', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has ErrorMessage => (is => 'ro', isa => 'Str', request_name => 'errorMessage', traits => ['NameInRequest']);
  has GroundStation => (is => 'ro', isa => 'Str', request_name => 'groundStation', traits => ['NameInRequest']);
  has MaximumElevation => (is => 'ro', isa => 'Paws::GroundStation::Elevation', request_name => 'maximumElevation', traits => ['NameInRequest']);
  has MissionProfileArn => (is => 'ro', isa => 'Str', request_name => 'missionProfileArn', traits => ['NameInRequest']);
  has PostPassEndTime => (is => 'ro', isa => 'Str', request_name => 'postPassEndTime', traits => ['NameInRequest']);
  has PrePassStartTime => (is => 'ro', isa => 'Str', request_name => 'prePassStartTime', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has SatelliteArn => (is => 'ro', isa => 'Str', request_name => 'satelliteArn', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ContactData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::ContactData object:

  $service_obj->Method(Att1 => { ContactId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::ContactData object:

  $result = $service_obj->Method(...);
  $result->Att1->ContactId

=head1 DESCRIPTION

Data describing a contact.

=head1 ATTRIBUTES


=head2 ContactId => Str

  UUID of a contact.


=head2 ContactStatus => Str

  Status of a contact.


=head2 EndTime => Str

  End time of a contact.


=head2 ErrorMessage => Str

  Error message of a contact.


=head2 GroundStation => Str

  Name of a ground station.


=head2 MaximumElevation => L<Paws::GroundStation::Elevation>

  Maximum elevation angle of a contact.


=head2 MissionProfileArn => Str

  ARN of a mission profile.


=head2 PostPassEndTime => Str

  Amount of time after a contact ends that youE<rsquo>d like to receive a
CloudWatch event indicating the pass has finished.


=head2 PrePassStartTime => Str

  Amount of time prior to contact start youE<rsquo>d like to receive a
CloudWatch event indicating an upcoming pass.


=head2 Region => Str

  Region of a contact.


=head2 SatelliteArn => Str

  ARN of a satellite.


=head2 StartTime => Str

  Start time of a contact.


=head2 Tags => L<Paws::GroundStation::TagsMap>

  Tags assigned to a contact.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

