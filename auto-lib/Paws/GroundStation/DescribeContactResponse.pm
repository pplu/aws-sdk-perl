
package Paws::GroundStation::DescribeContactResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw/GroundStation_Elevation GroundStation_TagsMap/;
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

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'GroundStation' => 'groundStation',
                       'ContactId' => 'contactId',
                       'PostPassEndTime' => 'postPassEndTime',
                       'EndTime' => 'endTime',
                       'ErrorMessage' => 'errorMessage',
                       'StartTime' => 'startTime',
                       'Tags' => 'tags',
                       'MissionProfileArn' => 'missionProfileArn',
                       'MaximumElevation' => 'maximumElevation',
                       'ContactStatus' => 'contactStatus',
                       'SatelliteArn' => 'satelliteArn',
                       'PrePassStartTime' => 'prePassStartTime'
                     },
  'types' => {
               'GroundStation' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'ErrorMessage' => {
                                   'type' => 'Str'
                                 },
               'MissionProfileArn' => {
                                        'type' => 'Str'
                                      },
               'ContactStatus' => {
                                    'type' => 'Str'
                                  },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'type' => 'GroundStation_TagsMap',
                           'class' => 'Paws::GroundStation::TagsMap'
                         },
               'PostPassEndTime' => {
                                      'type' => 'Str'
                                    },
               'ContactId' => {
                                'type' => 'Str'
                              },
               'MaximumElevation' => {
                                       'class' => 'Paws::GroundStation::Elevation',
                                       'type' => 'GroundStation_Elevation'
                                     },
               'SatelliteArn' => {
                                   'type' => 'Str'
                                 },
               'PrePassStartTime' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DescribeContactResponse

=head1 ATTRIBUTES


=head2 ContactId => Str

UUID of a contact.


=head2 ContactStatus => Str

Status of a contact.

Valid values are: C<"AVAILABLE">, C<"AWS_CANCELLED">, C<"CANCELLED">, C<"COMPLETED">, C<"FAILED">, C<"FAILED_TO_SCHEDULE">, C<"PASS">, C<"POSTPASS">, C<"PREPASS">, C<"SCHEDULED">, C<"SCHEDULING">
=head2 EndTime => Str

End time of a contact.


=head2 ErrorMessage => Str

Error message for a contact.


=head2 GroundStation => Str

Ground station for a contact.


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


=head2 _request_id => Str


=cut

