
package Paws::SageMaker::DescribeEndpoint;
  use Moose;
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeEndpointOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEndpoint - Arguments for method DescribeEndpoint on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEndpoint on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEndpoint.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeEndpointOutput = $api . sagemaker->DescribeEndpoint(
      EndpointName => 'MyEndpointName',

    );

    # Results:
    my $CreationTime       = $DescribeEndpointOutput->CreationTime;
    my $EndpointArn        = $DescribeEndpointOutput->EndpointArn;
    my $EndpointConfigName = $DescribeEndpointOutput->EndpointConfigName;
    my $EndpointName       = $DescribeEndpointOutput->EndpointName;
    my $EndpointStatus     = $DescribeEndpointOutput->EndpointStatus;
    my $FailureReason      = $DescribeEndpointOutput->FailureReason;
    my $LastModifiedTime   = $DescribeEndpointOutput->LastModifiedTime;
    my $ProductionVariants = $DescribeEndpointOutput->ProductionVariants;

    # Returns a L<Paws::SageMaker::DescribeEndpointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointName => Str

The name of the endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEndpoint in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

