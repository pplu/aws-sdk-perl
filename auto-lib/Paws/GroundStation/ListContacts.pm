
package Paws::GroundStation::ListContacts;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::GroundStation::Types qw//;
  has EndTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has GroundStation => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has MissionProfileArn => (is => 'ro', isa => Str, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SatelliteArn => (is => 'ro', isa => Str, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StatusList => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListContacts');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/contacts');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::ListContactsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MissionProfileArn' => {
                                        'type' => 'Str'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'GroundStation' => {
                                    'type' => 'Str'
                                  },
               'StatusList' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'SatelliteArn' => {
                                   'type' => 'Str'
                                 },
               'StartTime' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'MissionProfileArn' => 'missionProfileArn',
                       'NextToken' => 'nextToken',
                       'GroundStation' => 'groundStation',
                       'StatusList' => 'statusList',
                       'MaxResults' => 'maxResults',
                       'EndTime' => 'endTime',
                       'SatelliteArn' => 'satelliteArn',
                       'StartTime' => 'startTime'
                     },
  'IsRequired' => {
                    'StatusList' => 1,
                    'StartTime' => 1,
                    'EndTime' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListContacts - Arguments for method ListContacts on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListContacts on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method ListContacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListContacts.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $ListContactsResponse = $groundstation->ListContacts(
      EndTime    => '1970-01-01T01:00:00',
      StartTime  => '1970-01-01T01:00:00',
      StatusList => [
        'AVAILABLE',
        ... # values: AVAILABLE, AWS_CANCELLED, CANCELLED, COMPLETED, FAILED, FAILED_TO_SCHEDULE, PASS, POSTPASS, PREPASS, SCHEDULED, SCHEDULING
      ],
      GroundStation     => 'MyString',               # OPTIONAL
      MaxResults        => 1,                        # OPTIONAL
      MissionProfileArn => 'MyMissionProfileArn',    # OPTIONAL
      NextToken         => 'MyString',               # OPTIONAL
      SatelliteArn      => 'MysatelliteArn',         # OPTIONAL
    );

    # Results:
    my $ContactList = $ListContactsResponse->ContactList;
    my $NextToken   = $ListContactsResponse->NextToken;

    # Returns a L<Paws::GroundStation::ListContactsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/ListContacts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

End time of a contact.



=head2 GroundStation => Str

Name of a ground station.



=head2 MaxResults => Int

Maximum number of contacts returned.



=head2 MissionProfileArn => Str

ARN of a mission profile.



=head2 NextToken => Str

Next token returned in the request of a previous C<ListContacts> call.
Used to get the next page of results.



=head2 SatelliteArn => Str

ARN of a satellite.



=head2 B<REQUIRED> StartTime => Str

Start time of a contact.



=head2 B<REQUIRED> StatusList => ArrayRef[Str|Undef]

Status of a contact reservation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListContacts in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

