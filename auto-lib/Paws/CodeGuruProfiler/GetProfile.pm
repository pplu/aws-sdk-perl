
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

The format of the returned profiling data. The format maps to the
C<Accept> and C<Content-Type> headers of the HTTP request. You can
specify one of the following: or the default .

 <ul> <li> <p> <code>application/json</code> — standard JSON format </p> </li> <li> <p> <code>application/x-amzn-ion</code> — the Amazon Ion data format. For more information, see <a href="http://amzn.github.io/ion-docs/">Amazon Ion</a>. </p> </li> </ul>



=head2 EndTime => Str

The end time of the requested profile. Specify using the ISO 8601
format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
past June 1, 2020 1:15:02 PM UTC.

If you specify C<endTime>, then you must also specify C<period> or
C<startTime>, but not both.



=head2 MaxDepth => Int

The maximum depth of the stacks in the code that is represented in the
aggregated profile. For example, if CodeGuru Profiler finds a method
C<A>, which calls method C<B>, which calls method C<C>, which calls
method C<D>, then the depth is 4. If the C<maxDepth> is set to 2, then
the aggregated profile contains representations of methods C<A> and
C<B>.



=head2 Period => Str

Used with C<startTime> or C<endTime> to specify the time range for the
returned aggregated profile. Specify using the ISO 8601 format. For
example, C<P1DT1H1M1S>.

 <p> To get the latest aggregated profile, specify only <code>period</code>. </p>



=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group to get.



=head2 StartTime => Str

The start time of the profile to get. Specify using the ISO 8601
format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
past June 1, 2020 1:15:02 PM UTC.

 <p> If you specify <code>startTime</code>, then you must also specify <code>period</code> or <code>endTime</code>, but not both. </p>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProfile in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

