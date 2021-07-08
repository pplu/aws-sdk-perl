
package Paws::DevOpsGuru::ListAnomaliesForInsight;
  use Moose;
  has InsightId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InsightId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StartTimeRange => (is => 'ro', isa => 'Paws::DevOpsGuru::StartTimeRange');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnomaliesForInsight');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/anomalies/insight/{InsightId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::ListAnomaliesForInsightResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListAnomaliesForInsight - Arguments for method ListAnomaliesForInsight on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnomaliesForInsight on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method ListAnomaliesForInsight.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnomaliesForInsight.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $ListAnomaliesForInsightResponse =
      $devops -guru->ListAnomaliesForInsight(
      InsightId      => 'MyInsightId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyUuidNextToken',    # OPTIONAL
      StartTimeRange => {
        FromTime => '1970-01-01T01:00:00',    # OPTIONAL
        ToTime   => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListAnomaliesForInsightResponse->NextToken;
    my $ProactiveAnomalies =
      $ListAnomaliesForInsightResponse->ProactiveAnomalies;
    my $ReactiveAnomalies = $ListAnomaliesForInsightResponse->ReactiveAnomalies;

    # Returns a L<Paws::DevOpsGuru::ListAnomaliesForInsightResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/ListAnomaliesForInsight>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InsightId => Str

The ID of the insight. The returned anomalies belong to this insight.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 StartTimeRange => L<Paws::DevOpsGuru::StartTimeRange>

A time range used to specify when the requested anomalies started. All
returned anomalies started during this time range.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnomaliesForInsight in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

