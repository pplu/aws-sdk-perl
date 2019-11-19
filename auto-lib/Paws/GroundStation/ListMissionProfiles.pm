
package Paws::GroundStation::ListMissionProfiles;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GroundStation::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListMissionProfiles');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/missionprofile');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::ListMissionProfilesResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListMissionProfiles - Arguments for method ListMissionProfiles on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMissionProfiles on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method ListMissionProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMissionProfiles.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $ListMissionProfilesResponse = $groundstation->ListMissionProfiles(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $MissionProfileList = $ListMissionProfilesResponse->MissionProfileList;
    my $NextToken          = $ListMissionProfilesResponse->NextToken;

    # Returns a L<Paws::GroundStation::ListMissionProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/ListMissionProfiles>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of mission profiles returned.



=head2 NextToken => Str

Next token returned in the request of a previous C<ListMissionProfiles>
call. Used to get the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMissionProfiles in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

