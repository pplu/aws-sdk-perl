
package Paws::XRay::GetTimeSeriesServiceStatistics;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has EntitySelectorExpression => (is => 'ro', isa => 'Str');
  has GroupARN => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Period => (is => 'ro', isa => 'Int');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTimeSeriesServiceStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/TimeSeriesServiceStatistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::GetTimeSeriesServiceStatisticsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetTimeSeriesServiceStatistics - Arguments for method GetTimeSeriesServiceStatistics on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTimeSeriesServiceStatistics on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method GetTimeSeriesServiceStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTimeSeriesServiceStatistics.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $GetTimeSeriesServiceStatisticsResult =
      $xray->GetTimeSeriesServiceStatistics(
      EndTime                  => '1970-01-01T01:00:00',
      StartTime                => '1970-01-01T01:00:00',
      EntitySelectorExpression => 'MyEntitySelectorExpression',    # OPTIONAL
      GroupARN                 => 'MyGroupARN',                    # OPTIONAL
      GroupName                => 'MyGroupName',                   # OPTIONAL
      NextToken                => 'MyString',                      # OPTIONAL
      Period                   => 1,                               # OPTIONAL
      );

    # Results:
    my $ContainsOldGroupVersions =
      $GetTimeSeriesServiceStatisticsResult->ContainsOldGroupVersions;
    my $NextToken = $GetTimeSeriesServiceStatisticsResult->NextToken;
    my $TimeSeriesServiceStatistics =
      $GetTimeSeriesServiceStatisticsResult->TimeSeriesServiceStatistics;

    # Returns a L<Paws::XRay::GetTimeSeriesServiceStatisticsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/GetTimeSeriesServiceStatistics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the time frame for which to aggregate statistics.



=head2 EntitySelectorExpression => Str

A filter expression defining entities that will be aggregated for
statistics. Supports ID, service, and edge functions. If no selector
expression is specified, edge statistics are returned.



=head2 GroupARN => Str

The ARN of the group for which to pull statistics from.



=head2 GroupName => Str

The case-sensitive name of the group for which to pull statistics from.



=head2 NextToken => Str

Pagination token.



=head2 Period => Int

Aggregation period in seconds.



=head2 B<REQUIRED> StartTime => Str

The start of the time frame for which to aggregate statistics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTimeSeriesServiceStatistics in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

