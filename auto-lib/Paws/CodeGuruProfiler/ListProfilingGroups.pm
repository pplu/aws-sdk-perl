
package Paws::CodeGuruProfiler::ListProfilingGroups;
  use Moose;
  has IncludeDescription => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeDescription');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfilingGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::ListProfilingGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::ListProfilingGroups - Arguments for method ListProfilingGroups on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfilingGroups on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method ListProfilingGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfilingGroups.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $ListProfilingGroupsResponse = $codeguru -profiler->ListProfilingGroups(
      IncludeDescription => 1,                      # OPTIONAL
      MaxResults         => 1,                      # OPTIONAL
      NextToken          => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken           = $ListProfilingGroupsResponse->NextToken;
    my $ProfilingGroupNames = $ListProfilingGroupsResponse->ProfilingGroupNames;
    my $ProfilingGroups     = $ListProfilingGroupsResponse->ProfilingGroups;

    # Returns a L<Paws::CodeGuruProfiler::ListProfilingGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/ListProfilingGroups>

=head1 ATTRIBUTES


=head2 IncludeDescription => Bool

A C<Boolean> value indicating whether to include a description. If
C<true>, then a list of C<ProfilingGroupDescription>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_ProfilingGroupDescription.html)
objects that contain detailed information about profiling groups is
returned. If C<false>, then a list of profiling group names is
returned.



=head2 MaxResults => Int

The maximum number of profiling groups results returned by
C<ListProfilingGroups> in paginated output. When this parameter is
used, C<ListProfilingGroups> only returns C<maxResults> results in a
single page along with a C<nextToken> response element. The remaining
results of the initial request can be seen by sending another
C<ListProfilingGroups> request with the returned C<nextToken> value.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListProfilingGroups> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfilingGroups in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

