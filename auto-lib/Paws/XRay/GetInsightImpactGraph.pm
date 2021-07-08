
package Paws::XRay::GetInsightImpactGraph;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has InsightId => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInsightImpactGraph');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/InsightImpactGraph');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::GetInsightImpactGraphResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetInsightImpactGraph - Arguments for method GetInsightImpactGraph on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInsightImpactGraph on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method GetInsightImpactGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInsightImpactGraph.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $GetInsightImpactGraphResult = $xray->GetInsightImpactGraph(
      EndTime   => '1970-01-01T01:00:00',
      InsightId => 'MyInsightId',
      StartTime => '1970-01-01T01:00:00',
      NextToken => 'MyToken',               # OPTIONAL
    );

    # Results:
    my $EndTime             = $GetInsightImpactGraphResult->EndTime;
    my $InsightId           = $GetInsightImpactGraphResult->InsightId;
    my $NextToken           = $GetInsightImpactGraphResult->NextToken;
    my $ServiceGraphEndTime = $GetInsightImpactGraphResult->ServiceGraphEndTime;
    my $ServiceGraphStartTime =
      $GetInsightImpactGraphResult->ServiceGraphStartTime;
    my $Services  = $GetInsightImpactGraphResult->Services;
    my $StartTime = $GetInsightImpactGraphResult->StartTime;

    # Returns a L<Paws::XRay::GetInsightImpactGraphResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/GetInsightImpactGraph>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The estimated end time of the insight, in Unix time seconds. The
EndTime is exclusive of the value provided. The time range between the
start time and end time can't be more than six hours.



=head2 B<REQUIRED> InsightId => Str

The insight's unique identifier. Use the GetInsightSummaries action to
retrieve an InsightId.



=head2 NextToken => Str

Specify the pagination token returned by a previous request to retrieve
the next page of results.



=head2 B<REQUIRED> StartTime => Str

The estimated start time of the insight, in Unix time seconds. The
StartTime is inclusive of the value provided and can't be more than 30
days old.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInsightImpactGraph in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

