
package Paws::Kafka::DescribeClusterOperation;
  use Moose;
  has ClusterOperationArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterOperationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterOperation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/operations/{clusterOperationArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::DescribeClusterOperationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeClusterOperation - Arguments for method DescribeClusterOperation on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusterOperation on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method DescribeClusterOperation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusterOperation.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $DescribeClusterOperationResponse = $kafka->DescribeClusterOperation(
      ClusterOperationArn => 'My__string',

    );

    # Results:
    my $ClusterOperationInfo =
      $DescribeClusterOperationResponse->ClusterOperationInfo;

    # Returns a L<Paws::Kafka::DescribeClusterOperationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/DescribeClusterOperation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterOperationArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusterOperation in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

