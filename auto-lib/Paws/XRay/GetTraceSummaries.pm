
package Paws::XRay::GetTraceSummaries;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has FilterExpression => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Sampling => (is => 'ro', isa => 'Bool');
  has SamplingStrategy => (is => 'ro', isa => 'Paws::XRay::SamplingStrategy');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
  has TimeRangeType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTraceSummaries');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/TraceSummaries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::GetTraceSummariesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetTraceSummaries - Arguments for method GetTraceSummaries on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTraceSummaries on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method GetTraceSummaries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTraceSummaries.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $GetTraceSummariesResult = $xray->GetTraceSummaries(
      EndTime          => '1970-01-01T01:00:00',
      StartTime        => '1970-01-01T01:00:00',
      FilterExpression => 'MyFilterExpression',    # OPTIONAL
      NextToken        => 'MyString',              # OPTIONAL
      Sampling         => 1,                       # OPTIONAL
      SamplingStrategy => {
        Name  => 'PartialScan',    # values: PartialScan, FixedRate; OPTIONAL
        Value => 1,                # OPTIONAL
      },    # OPTIONAL
      TimeRangeType => 'TraceId',    # OPTIONAL
    );

    # Results:
    my $ApproximateTime      = $GetTraceSummariesResult->ApproximateTime;
    my $NextToken            = $GetTraceSummariesResult->NextToken;
    my $TraceSummaries       = $GetTraceSummariesResult->TraceSummaries;
    my $TracesProcessedCount = $GetTraceSummariesResult->TracesProcessedCount;

    # Returns a L<Paws::XRay::GetTraceSummariesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/GetTraceSummaries>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the time frame for which to retrieve traces.



=head2 FilterExpression => Str

Specify a filter expression to retrieve trace summaries for services or
requests that meet certain requirements.



=head2 NextToken => Str

Specify the pagination token returned by a previous request to retrieve
the next page of results.



=head2 Sampling => Bool

Set to C<true> to get summaries for only a subset of available traces.



=head2 SamplingStrategy => L<Paws::XRay::SamplingStrategy>

A paramater to indicate whether to enable sampling on trace summaries.
Input parameters are Name and Value.



=head2 B<REQUIRED> StartTime => Str

The start of the time frame for which to retrieve traces.



=head2 TimeRangeType => Str

A parameter to indicate whether to query trace summaries by TraceId or
Event time.

Valid values are: C<"TraceId">, C<"Event">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTraceSummaries in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

