
package Paws::Robomaker::ListRobotApplications;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has VersionQualifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionQualifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRobotApplications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listRobotApplications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::ListRobotApplicationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListRobotApplications - Arguments for method ListRobotApplications on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRobotApplications on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method ListRobotApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRobotApplications.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $ListRobotApplicationsResponse = $robomaker->ListRobotApplications(
      Filters => [
        {
          Name   => 'MyName',    # min: 1, max: 255
          Values => [
            'MyName', ...        # min: 1, max: 255
          ],                     # min: 1, max: 1; OPTIONAL
        },
        ...
      ],                         # OPTIONAL
      MaxResults       => 1,                       # OPTIONAL
      NextToken        => 'MyPaginationToken',     # OPTIONAL
      VersionQualifier => 'MyVersionQualifier',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRobotApplicationsResponse->NextToken;
    my $RobotApplicationSummaries =
      $ListRobotApplicationsResponse->RobotApplicationSummaries;

    # Returns a L<Paws::Robomaker::ListRobotApplicationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/ListRobotApplications>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Robomaker::Filter>]

Optional filters to limit results.



=head2 MaxResults => Int

The maximum number of deployment job results returned by
C<ListRobotApplications> in paginated output. When this parameter is
used, C<ListRobotApplications> only returns C<maxResults> results in a
single page along with a C<nextToken> response element. The remaining
results of the initial request can be seen by sending another
C<ListFleets> request with the returned C<nextToken> value. This value
can be between 1 and 100. If this parameter is not used, then
C<ListRobotApplications> returns up to 100 results and a C<nextToken>
value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListRobotApplications> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 VersionQualifier => Str

The version qualifier of the robot application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRobotApplications in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

