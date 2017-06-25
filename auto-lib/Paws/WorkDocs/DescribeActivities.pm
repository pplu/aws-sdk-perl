
package Paws::WorkDocs::DescribeActivities;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication' );
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit' );
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker' );
  has OrganizationId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'organizationId' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime' );
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'userId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeActivities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/activities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::DescribeActivitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeActivities - Arguments for method DescribeActivities on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeActivities on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method DescribeActivities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeActivities.

As an example:

  $service_obj->DescribeActivities(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. This field should not be set when
using administrative API actions, as in accessing the API using AWS
credentials.



=head2 EndTime => Str

The timestamp that determines the end time of the activities; the
response includes the activities performed before the specified
timestamp.



=head2 Limit => Int

The maximum number of items to return.



=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)



=head2 OrganizationId => Str

The ID of the organization. This is a mandatory parameter when using
administrative API (SigV4) requests.



=head2 StartTime => Str

The timestamp that determines the starting time of the activities; the
response includes the activities performed after the specified
timestamp.



=head2 UserId => Str

The ID of the user who performed the action. The response includes
activities pertaining to this user. This is an optional parameter and
is only applicable for administrative API (SigV4) requests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeActivities in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

