
package Paws::WorkDocs::DescribeActivities;
  use Moose;
  has ActivityTypes => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'activityTypes');
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime');
  has IncludeIndirectActivities => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeIndirectActivities');
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has OrganizationId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'organizationId');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceId');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeActivities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/activities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::DescribeActivitiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeActivities - Arguments for method DescribeActivities on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeActivities on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method DescribeActivities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeActivities.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $DescribeActivitiesResponse = $workdocs->DescribeActivities(
      ActivityTypes             => 'MyActivityNamesFilterType',     # OPTIONAL
      AuthenticationToken       => 'MyAuthenticationHeaderType',    # OPTIONAL
      EndTime                   => '1970-01-01T01:00:00',           # OPTIONAL
      IncludeIndirectActivities => 1,                               # OPTIONAL
      Limit                     => 1,                               # OPTIONAL
      Marker                    => 'MyMarkerType',                  # OPTIONAL
      OrganizationId            => 'MyIdType',                      # OPTIONAL
      ResourceId                => 'MyIdType',                      # OPTIONAL
      StartTime                 => '1970-01-01T01:00:00',           # OPTIONAL
      UserId                    => 'MyIdType',                      # OPTIONAL
    );

    # Results:
    my $Marker         = $DescribeActivitiesResponse->Marker;
    my $UserActivities = $DescribeActivitiesResponse->UserActivities;

    # Returns a L<Paws::WorkDocs::DescribeActivitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/DescribeActivities>

=head1 ATTRIBUTES


=head2 ActivityTypes => Str

Specifies which activity types to include in the response. If this
field is left empty, all activity types are returned.



=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 EndTime => Str

The timestamp that determines the end time of the activities. The
response includes the activities performed before the specified
timestamp.



=head2 IncludeIndirectActivities => Bool

Includes indirect activities. An indirect activity results from a
direct activity performed on a parent resource. For example, sharing a
parent folder (the direct activity) shares all of the subfolders and
documents within the parent folder (the indirect activity).



=head2 Limit => Int

The maximum number of items to return.



=head2 Marker => Str

The marker for the next set of results.



=head2 OrganizationId => Str

The ID of the organization. This is a mandatory parameter when using
administrative API (SigV4) requests.



=head2 ResourceId => Str

The document or folder ID for which to describe activity types.



=head2 StartTime => Str

The timestamp that determines the starting time of the activities. The
response includes the activities performed after the specified
timestamp.



=head2 UserId => Str

The ID of the user who performed the action. The response includes
activities pertaining to this user. This is an optional parameter and
is only applicable for administrative API (SigV4) requests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeActivities in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

