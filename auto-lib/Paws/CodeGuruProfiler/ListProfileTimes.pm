
package Paws::CodeGuruProfiler::ListProfileTimes;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has OrderBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'orderBy');
  has Period => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'period', required => 1);
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfileTimes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}/profileTimes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::ListProfileTimesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::ListProfileTimes - Arguments for method ListProfileTimes on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfileTimes on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method ListProfileTimes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfileTimes.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $ListProfileTimesResponse = $codeguru -profiler->ListProfileTimes(
      EndTime            => '1970-01-01T01:00:00',
      Period             => 'PT5M',
      ProfilingGroupName => 'MyProfilingGroupName',
      StartTime          => '1970-01-01T01:00:00',
      MaxResults         => 1,                        # OPTIONAL
      NextToken          => 'MyPaginationToken',      # OPTIONAL
      OrderBy            => 'TimestampDescending',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListProfileTimesResponse->NextToken;
    my $ProfileTimes = $ListProfileTimesResponse->ProfileTimes;

    # Returns a L<Paws::CodeGuruProfiler::ListProfileTimesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/ListProfileTimes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end time of the time range from which to list the profiles.



=head2 MaxResults => Int

The maximum number of profile time results returned by
C<ListProfileTimes> in paginated output. When this parameter is used,
C<ListProfileTimes> only returns C<maxResults> results in a single page
with a C<nextToken> response element. The remaining results of the
initial request can be seen by sending another C<ListProfileTimes>
request with the returned C<nextToken> value.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListProfileTimes> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 OrderBy => Str

The order (ascending or descending by start time of the profile) to use
when listing profiles. Defaults to C<TIMESTAMP_DESCENDING>.

Valid values are: C<"TimestampDescending">, C<"TimestampAscending">

=head2 B<REQUIRED> Period => Str

The aggregation period. This specifies the period during which an
aggregation profile collects posted agent profiles for a profiling
group. There are 3 valid values.

=over

=item *

C<P1D> E<mdash> 1 day

=item *

C<PT1H> E<mdash> 1 hour

=item *

C<PT5M> E<mdash> 5 minutes

=back


Valid values are: C<"PT5M">, C<"PT1H">, C<"P1D">

=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group.



=head2 B<REQUIRED> StartTime => Str

The start time of the time range from which to list the profiles.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfileTimes in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

