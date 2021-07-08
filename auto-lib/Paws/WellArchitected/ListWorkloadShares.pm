
package Paws::WellArchitected::ListWorkloadShares;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has SharedWithPrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SharedWithPrefix');
  has WorkloadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkloadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWorkloadShares');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads/{WorkloadId}/shares');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::ListWorkloadSharesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListWorkloadShares - Arguments for method ListWorkloadShares on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWorkloadShares on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method ListWorkloadShares.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWorkloadShares.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $ListWorkloadSharesOutput = $wellarchitected->ListWorkloadShares(
      WorkloadId       => 'MyWorkloadId',
      MaxResults       => 1,                       # OPTIONAL
      NextToken        => 'MyNextToken',           # OPTIONAL
      SharedWithPrefix => 'MySharedWithPrefix',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListWorkloadSharesOutput->NextToken;
    my $WorkloadId = $ListWorkloadSharesOutput->WorkloadId;
    my $WorkloadShareSummaries =
      $ListWorkloadSharesOutput->WorkloadShareSummaries;

    # Returns a L<Paws::WellArchitected::ListWorkloadSharesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/ListWorkloadShares>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return for this request.



=head2 NextToken => Str





=head2 SharedWithPrefix => Str

The AWS account ID or IAM role with which the workload is shared.



=head2 B<REQUIRED> WorkloadId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWorkloadShares in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

