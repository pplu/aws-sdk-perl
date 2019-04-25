
package Paws::SageMaker::DescribeModelPackageOutput;
  use Moose;
  has CertifyForMarketplace => (is => 'ro', isa => 'Bool');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has InferenceSpecification => (is => 'ro', isa => 'Paws::SageMaker::InferenceSpecification');
  has ModelPackageArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageDescription => (is => 'ro', isa => 'Str');
  has ModelPackageName => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageStatus => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageStatusDetails => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageStatusDetails', required => 1);
  has SourceAlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::SourceAlgorithmSpecification');
  has ValidationSpecification => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageValidationSpecification');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelPackageOutput

=head1 ATTRIBUTES


=head2 CertifyForMarketplace => Bool

Whether the model package is certified for listing on AWS Marketplace.


=head2 B<REQUIRED> CreationTime => Str

A timestamp specifying when the model package was created.


=head2 InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>

Details about inference jobs that can be run with models based on this
model package.


=head2 B<REQUIRED> ModelPackageArn => Str

The Amazon Resource Name (ARN) of the model package.


=head2 ModelPackageDescription => Str

A brief summary of the model package.


=head2 B<REQUIRED> ModelPackageName => Str

The name of the model package being described.


=head2 B<REQUIRED> ModelPackageStatus => Str

The current status of the model package.

Valid values are: C<"Pending">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 B<REQUIRED> ModelPackageStatusDetails => L<Paws::SageMaker::ModelPackageStatusDetails>

Details about the current status of the model package.


=head2 SourceAlgorithmSpecification => L<Paws::SageMaker::SourceAlgorithmSpecification>

Details about the algorithm that was used to create the model package.


=head2 ValidationSpecification => L<Paws::SageMaker::ModelPackageValidationSpecification>

Configurations for one or more transform jobs that Amazon SageMaker
runs to test the model package.


=head2 _request_id => Str


=cut

1;