
package Paws::Greengrass::ListBulkDeploymentDetailedReports;
  use Moose;
  has BulkDeploymentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'BulkDeploymentId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBulkDeploymentDetailedReports');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/bulk/deployments/{BulkDeploymentId}/detailed-reports');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::ListBulkDeploymentDetailedReportsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListBulkDeploymentDetailedReports - Arguments for method ListBulkDeploymentDetailedReports on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBulkDeploymentDetailedReports on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method ListBulkDeploymentDetailedReports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBulkDeploymentDetailedReports.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $ListBulkDeploymentDetailedReportsResponse =
      $greengrass->ListBulkDeploymentDetailedReports(
      BulkDeploymentId => 'My__string',
      MaxResults       => 'My__string',    # OPTIONAL
      NextToken        => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Deployments = $ListBulkDeploymentDetailedReportsResponse->Deployments;
    my $NextToken   = $ListBulkDeploymentDetailedReportsResponse->NextToken;

# Returns a L<Paws::Greengrass::ListBulkDeploymentDetailedReportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/ListBulkDeploymentDetailedReports>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BulkDeploymentId => Str

The ID of the bulk deployment.



=head2 MaxResults => Str

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBulkDeploymentDetailedReports in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

