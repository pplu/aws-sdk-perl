# Generated from default/object.tt
package Paws::GroundStation::ContactData;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw/GroundStation_TagsMap GroundStation_Elevation/;
  has ContactId => (is => 'ro', isa => Str);
  has ContactStatus => (is => 'ro', isa => Str);
  has EndTime => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has GroundStation => (is => 'ro', isa => Str);
  has MaximumElevation => (is => 'ro', isa => GroundStation_Elevation);
  has MissionProfileArn => (is => 'ro', isa => Str);
  has PostPassEndTime => (is => 'ro', isa => Str);
  has PrePassStartTime => (is => 'ro', isa => Str);
  has SatelliteArn => (is => 'ro', isa => Str);
  has StartTime => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => GroundStation_TagsMap);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MissionProfileArn' => {
                                        'type' => 'Str'
                                      },
               'GroundStation' => {
                                    'type' => 'Str'
                                  },
               'PrePassStartTime' => {
                                       'type' => 'Str'
                                     },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'MaximumElevation' => {
                                       'class' => 'Paws::GroundStation::Elevation',
                                       'type' => 'GroundStation_Elevation'
                                     },
               'ContactStatus' => {
                                    'type' => 'Str'
                                  },
               'ContactId' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::GroundStation::TagsMap',
                           'type' => 'GroundStation_TagsMap'
                         },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'SatelliteArn' => {
                                   'type' => 'Str'
                                 },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'PostPassEndTime' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'MissionProfileArn' => 'missionProfileArn',
                       'GroundStation' => 'groundStation',
                       'PrePassStartTime' => 'prePassStartTime',
                       'ErrorMessage' => 'errorMessage',
                       'MaximumElevation' => 'maximumElevation',
                       'ContactStatus' => 'contactStatus',
                       'ContactId' => 'contactId',
                       'Tags' => 'tags',
                       'StartTime' => 'startTime',
                       'SatelliteArn' => 'satelliteArn',
                       'EndTime' => 'endTime',
                       'PostPassEndTime' => 'postPassEndTime'
                     }
}
;
    return $Params_map;
  }


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


=head2 MaximumElevation => GroundStation_Elevation

  Maximum elevation angle of a contact.


=head2 MissionProfileArn => Str

  ARN of a mission profile.


=head2 PostPassEndTime => Str

  Amount of time after a contact ends that youE<rsquo>d like to receive a
CloudWatch event indicating the pass has finished.


=head2 PrePassStartTime => Str

  Amount of time prior to contact start youE<rsquo>d like to receive a
CloudWatch event indicating an upcoming pass.


=head2 SatelliteArn => Str

  ARN of a satellite.


=head2 StartTime => Str

  Start time of a contact.


=head2 Tags => GroundStation_TagsMap

  Tags assigned to a contact.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

