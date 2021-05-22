
package Paws::CodeGuruProfiler::DescribeProfilingGroup;
  use Moose;
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProfilingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::DescribeProfilingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::DescribeProfilingGroup - Arguments for method DescribeProfilingGroup on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProfilingGroup on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method DescribeProfilingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProfilingGroup.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $DescribeProfilingGroupResponse =
      $codeguru -profiler->DescribeProfilingGroup(
      ProfilingGroupName => 'MyProfilingGroupName',

      );

    # Results:
    my $ProfilingGroup = $DescribeProfilingGroupResponse->ProfilingGroup;

   # Returns a L<Paws::CodeGuruProfiler::DescribeProfilingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/DescribeProfilingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group to get information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProfilingGroup in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

