
package Paws::CodeGuruProfiler::GetRecommendations;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime', required => 1);
  has Locale => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'locale');
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/internal/profilingGroups/{profilingGroupName}/recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::GetRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::GetRecommendations - Arguments for method GetRecommendations on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecommendations on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method GetRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecommendations.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $GetRecommendationsResponse = $codeguru -profiler->GetRecommendations(
      EndTime            => '1970-01-01T01:00:00',
      ProfilingGroupName => 'MyProfilingGroupName',
      StartTime          => '1970-01-01T01:00:00',
      Locale             => 'MyLocale',               # OPTIONAL
    );

    # Results:
    my $Anomalies          = $GetRecommendationsResponse->Anomalies;
    my $ProfileEndTime     = $GetRecommendationsResponse->ProfileEndTime;
    my $ProfileStartTime   = $GetRecommendationsResponse->ProfileStartTime;
    my $ProfilingGroupName = $GetRecommendationsResponse->ProfilingGroupName;
    my $Recommendations    = $GetRecommendationsResponse->Recommendations;

    # Returns a L<Paws::CodeGuruProfiler::GetRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/GetRecommendations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The start time of the profile to get analysis data about. You must
specify C<startTime> and C<endTime>. This is specified using the ISO
8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
millisecond past June 1, 2020 1:15:02 PM UTC.



=head2 Locale => Str

The language used to provide analysis. Specify using a string that is
one of the following C<BCP 47> language codes.

=over

=item *

C<de-DE> - German, Germany

=item *

C<en-GB> - English, United Kingdom

=item *

C<en-US> - English, United States

=item *

C<es-ES> - Spanish, Spain

=item *

C<fr-FR> - French, France

=item *

C<it-IT> - Italian, Italy

=item *

C<ja-JP> - Japanese, Japan

=item *

C<ko-KR> - Korean, Republic of Korea

=item *

C<pt-BR> - Portugese, Brazil

=item *

C<zh-CN> - Chinese, China

=item *

C<zh-TW> - Chinese, Taiwan

=back




=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group to get analysis data about.



=head2 B<REQUIRED> StartTime => Str

The end time of the profile to get analysis data about. You must
specify C<startTime> and C<endTime>. This is specified using the ISO
8601 format. For example, 2020-06-01T13:15:02.001Z represents 1
millisecond past June 1, 2020 1:15:02 PM UTC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecommendations in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

