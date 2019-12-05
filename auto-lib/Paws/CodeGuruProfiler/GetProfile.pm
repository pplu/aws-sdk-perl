
package Paws::CodeGuruProfiler::GetProfile;
  use Moose;
  has Accept => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Accept');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime');
  has MaxDepth => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxDepth');
  has Period => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'period');
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}/profile');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::GetProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::GetProfile - Arguments for method GetProfile on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProfile on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method GetProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProfile.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $GetProfileResponse = $codeguru -profiler->GetProfile(
      ProfilingGroupName => 'MyProfilingGroupName',
      Accept             => 'MyString',               # OPTIONAL
      EndTime            => '1970-01-01T01:00:00',    # OPTIONAL
      MaxDepth           => 1,                        # OPTIONAL
      Period             => 'MyPeriod',               # OPTIONAL
      StartTime          => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $ContentEncoding = $GetProfileResponse->ContentEncoding;
    my $ContentType     = $GetProfileResponse->ContentType;
    my $Profile         = $GetProfileResponse->Profile;

    # Returns a L<Paws::CodeGuruProfiler::GetProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/GetProfile>

=head1 ATTRIBUTES


=head2 Accept => Str

The format of the profile to return. Supports application/json or
application/x-amzn-ion. Defaults to application/x-amzn-ion.



=head2 EndTime => Str

The end time of the profile to get. Either period or endTime must be
specified. Must be greater than start and the overall time range to be
in the past and not larger than a week.



=head2 MaxDepth => Int





=head2 Period => Str

The period of the profile to get. Exactly two of C<startTime>,
C<period> and C<endTime> must be specified. Must be positive and the
overall time range to be in the past and not larger than a week.



=head2 B<REQUIRED> ProfilingGroupName => Str





=head2 StartTime => Str

The start time of the profile to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProfile in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

