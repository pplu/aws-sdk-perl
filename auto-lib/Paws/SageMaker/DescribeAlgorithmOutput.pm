
package Paws::SageMaker::DescribeAlgorithmOutput;
  use Moose;
  has AlgorithmArn => (is => 'ro', isa => 'Str', required => 1);
  has AlgorithmDescription => (is => 'ro', isa => 'Str');
  has AlgorithmName => (is => 'ro', isa => 'Str', required => 1);
  has AlgorithmStatus => (is => 'ro', isa => 'Str', required => 1);
  has AlgorithmStatusDetails => (is => 'ro', isa => 'Paws::SageMaker::AlgorithmStatusDetails', required => 1);
  has CertifyForMarketplace => (is => 'ro', isa => 'Bool');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has InferenceSpecification => (is => 'ro', isa => 'Paws::SageMaker::InferenceSpecification');
  has ProductId => (is => 'ro', isa => 'Str');
  has TrainingSpecification => (is => 'ro', isa => 'Paws::SageMaker::TrainingSpecification', required => 1);
  has ValidationSpecification => (is => 'ro', isa => 'Paws::SageMaker::AlgorithmValidationSpecification');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAlgorithmOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmArn => Str

The Amazon Resource Name (ARN) of the algorithm.


=head2 AlgorithmDescription => Str

A brief summary about the algorithm.


=head2 B<REQUIRED> AlgorithmName => Str

The name of the algorithm being described.


=head2 B<REQUIRED> AlgorithmStatus => Str

The current status of the algorithm.

Valid values are: C<"Pending">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 B<REQUIRED> AlgorithmStatusDetails => L<Paws::SageMaker::AlgorithmStatusDetails>

Details about the current status of the algorithm.


=head2 CertifyForMarketplace => Bool

Whether the algorithm is certified to be listed in AWS Marketplace.


=head2 B<REQUIRED> CreationTime => Str

A timestamp specifying when the algorithm was created.


=head2 InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>

Details about inference jobs that the algorithm runs.


=head2 ProductId => Str

The product identifier of the algorithm.


=head2 B<REQUIRED> TrainingSpecification => L<Paws::SageMaker::TrainingSpecification>

Details about training jobs run by this algorithm.


=head2 ValidationSpecification => L<Paws::SageMaker::AlgorithmValidationSpecification>

Details about configurations for one or more training jobs that Amazon
SageMaker runs to test the algorithm.


=head2 _request_id => Str


=cut

1;