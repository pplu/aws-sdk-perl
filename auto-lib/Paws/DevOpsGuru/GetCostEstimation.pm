
package Paws::DevOpsGuru::GetCostEstimation;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCostEstimation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cost-estimation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::GetCostEstimationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::GetCostEstimation - Arguments for method GetCostEstimation on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCostEstimation on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method GetCostEstimation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCostEstimation.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $GetCostEstimationResponse = $devops -guru->GetCostEstimation(
      NextToken => 'MyUuidNextToken',    # OPTIONAL
    );

    # Results:
    my $Costs              = $GetCostEstimationResponse->Costs;
    my $NextToken          = $GetCostEstimationResponse->NextToken;
    my $ResourceCollection = $GetCostEstimationResponse->ResourceCollection;
    my $Status             = $GetCostEstimationResponse->Status;
    my $TimeRange          = $GetCostEstimationResponse->TimeRange;
    my $TotalCost          = $GetCostEstimationResponse->TotalCost;

    # Returns a L<Paws::DevOpsGuru::GetCostEstimationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/GetCostEstimation>

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCostEstimation in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

