
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

If set to true, returns the full description of the profiling groups
instead of the names. Defaults to false.



=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfilingGroups in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

