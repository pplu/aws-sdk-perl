
package Paws::DevOpsGuru::StartCostEstimation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ResourceCollection => (is => 'ro', isa => 'Paws::DevOpsGuru::CostEstimationResourceCollectionFilter', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartCostEstimation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cost-estimation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::StartCostEstimationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::StartCostEstimation - Arguments for method StartCostEstimation on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartCostEstimation on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method StartCostEstimation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartCostEstimation.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $StartCostEstimationResponse = $devops -guru->StartCostEstimation(
      ResourceCollection => {
        CloudFormation => {
          StackNames => [
            'MyStackName', ...    # min: 1, max: 128
          ],    # min: 1, max: 1; OPTIONAL
        },    # OPTIONAL
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/StartCostEstimation>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The idempotency token used to identify each cost estimate request.



=head2 B<REQUIRED> ResourceCollection => L<Paws::DevOpsGuru::CostEstimationResourceCollectionFilter>

The collection of AWS resources used to create a monthly DevOps Guru
cost estimate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartCostEstimation in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

