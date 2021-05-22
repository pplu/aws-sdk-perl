
package Paws::ApplicationCostProfiler::ListReportDefinitions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReportDefinitions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reportDefinition');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationCostProfiler::ListReportDefinitionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationCostProfiler::ListReportDefinitions - Arguments for method ListReportDefinitions on L<Paws::ApplicationCostProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReportDefinitions on the
L<AWS Application Cost Profiler|Paws::ApplicationCostProfiler> service. Use the attributes of this class
as arguments to method ListReportDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReportDefinitions.

=head1 SYNOPSIS

    my $application-cost-profiler = Paws->service('ApplicationCostProfiler');
    my $ListReportDefinitionsResult =
      $application -cost-profiler->ListReportDefinitions(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
      );

    # Results:
    my $NextToken         = $ListReportDefinitionsResult->NextToken;
    my $ReportDefinitions = $ListReportDefinitionsResult->ReportDefinitions;

# Returns a L<Paws::ApplicationCostProfiler::ListReportDefinitionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-cost-profiler/ListReportDefinitions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token value from a previous call to access the next page of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReportDefinitions in L<Paws::ApplicationCostProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

