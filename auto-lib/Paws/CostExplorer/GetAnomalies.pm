
package Paws::CostExplorer::GetAnomalies;
  use Moose;
  has DateInterval => (is => 'ro', isa => 'Paws::CostExplorer::AnomalyDateInterval', required => 1);
  has Feedback => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MonitorArn => (is => 'ro', isa => 'Str');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has TotalImpact => (is => 'ro', isa => 'Paws::CostExplorer::TotalImpactFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAnomalies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetAnomaliesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetAnomalies - Arguments for method GetAnomalies on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAnomalies on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetAnomalies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAnomalies.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetAnomaliesResponse = $ce->GetAnomalies(
      DateInterval => {
        StartDate => 'MyYearMonthDay',    # max: 40
        EndDate   => 'MyYearMonthDay',    # max: 40
      },
      Feedback      => 'YES',                # OPTIONAL
      MaxResults    => 1,                    # OPTIONAL
      MonitorArn    => 'MyGenericString',    # OPTIONAL
      NextPageToken => 'MyNextPageToken',    # OPTIONAL
      TotalImpact   => {
        NumericOperator => 'EQUAL'
        , # values: EQUAL, GREATER_THAN_OR_EQUAL, LESS_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, BETWEEN
        StartValue => 1,
        EndValue   => 1,
      },    # OPTIONAL
    );

    # Results:
    my $Anomalies     = $GetAnomaliesResponse->Anomalies;
    my $NextPageToken = $GetAnomaliesResponse->NextPageToken;

    # Returns a L<Paws::CostExplorer::GetAnomaliesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetAnomalies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DateInterval => L<Paws::CostExplorer::AnomalyDateInterval>

Assigns the start and end dates for retrieving cost anomalies. The
returned anomaly object will have an C<AnomalyEndDate> in the specified
time range.



=head2 Feedback => Str

Filters anomaly results by the feedback field on the anomaly object.

Valid values are: C<"YES">, C<"NO">, C<"PLANNED_ACTIVITY">

=head2 MaxResults => Int

The number of entries a paginated response contains.



=head2 MonitorArn => Str

Retrieves all of the cost anomalies detected for a specific cost
anomaly monitor Amazon Resource Name (ARN).



=head2 NextPageToken => Str

The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the
maximum page size.



=head2 TotalImpact => L<Paws::CostExplorer::TotalImpactFilter>

Filters anomaly results by the total impact field on the anomaly
object. For example, you can filter anomalies C<GREATER_THAN 200.00> to
retrieve anomalies, with an estimated dollar impact greater than 200.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAnomalies in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

