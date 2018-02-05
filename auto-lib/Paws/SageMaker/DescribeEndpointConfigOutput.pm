
package Paws::SageMaker::DescribeEndpointConfigOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndpointConfigArn => (is => 'ro', isa => 'Str', required => 1);
  has EndpointConfigName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has ProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProductionVariant]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEndpointConfigOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the endpoint configuration was created.


=head2 B<REQUIRED> EndpointConfigArn => Str

The Amazon Resource Name (ARN) of the endpoint configuration.


=head2 B<REQUIRED> EndpointConfigName => Str

Name of the Amazon SageMaker endpoint configuration.


=head2 KmsKeyId => Str

AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it on
the ML storage volume attached to the instance.


=head2 B<REQUIRED> ProductionVariants => ArrayRef[L<Paws::SageMaker::ProductionVariant>]

An array of C<ProductionVariant> objects, one for each model that you
want to host at this endpoint.


=head2 _request_id => Str


=cut

1;