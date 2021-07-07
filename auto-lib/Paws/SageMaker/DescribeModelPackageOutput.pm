
package Paws::SageMaker::DescribeModelPackageOutput;
  use Moose;
  has ApprovalDescription => (is => 'ro', isa => 'Str');
  has CertifyForMarketplace => (is => 'ro', isa => 'Bool');
  has CreatedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has InferenceSpecification => (is => 'ro', isa => 'Paws::SageMaker::InferenceSpecification');
  has LastModifiedBy => (is => 'ro', isa => 'Paws::SageMaker::UserContext');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has MetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::MetadataProperties');
  has ModelApprovalStatus => (is => 'ro', isa => 'Str');
  has ModelMetrics => (is => 'ro', isa => 'Paws::SageMaker::ModelMetrics');
  has ModelPackageArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageDescription => (is => 'ro', isa => 'Str');
  has ModelPackageGroupName => (is => 'ro', isa => 'Str');
  has ModelPackageName => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageStatus => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageStatusDetails => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageStatusDetails', required => 1);
  has ModelPackageVersion => (is => 'ro', isa => 'Int');
  has SourceAlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::SourceAlgorithmSpecification');
  has ValidationSpecification => (is => 'ro', isa => 'Paws::SageMaker::ModelPackageValidationSpecification');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelPackageOutput

=head1 ATTRIBUTES


=head2 ApprovalDescription => Str

A description provided for the model approval.


=head2 CertifyForMarketplace => Bool

Whether the model package is certified for listing on Amazon Web
Services Marketplace.


=head2 CreatedBy => L<Paws::SageMaker::UserContext>




=head2 B<REQUIRED> CreationTime => Str

A timestamp specifying when the model package was created.


=head2 InferenceSpecification => L<Paws::SageMaker::InferenceSpecification>

Details about inference jobs that can be run with models based on this
model package.


=head2 LastModifiedBy => L<Paws::SageMaker::UserContext>




=head2 LastModifiedTime => Str

The last time the model package was modified.


=head2 MetadataProperties => L<Paws::SageMaker::MetadataProperties>




=head2 ModelApprovalStatus => Str

The approval status of the model package.

Valid values are: C<"Approved">, C<"Rejected">, C<"PendingManualApproval">
=head2 ModelMetrics => L<Paws::SageMaker::ModelMetrics>

Metrics for the model.


=head2 B<REQUIRED> ModelPackageArn => Str

The Amazon Resource Name (ARN) of the model package.


=head2 ModelPackageDescription => Str

A brief summary of the model package.


=head2 ModelPackageGroupName => Str

If the model is a versioned model, the name of the model group that the
versioned model belongs to.


=head2 B<REQUIRED> ModelPackageName => Str

The name of the model package being described.


=head2 B<REQUIRED> ModelPackageStatus => Str

The current status of the model package.

Valid values are: C<"Pending">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 B<REQUIRED> ModelPackageStatusDetails => L<Paws::SageMaker::ModelPackageStatusDetails>

Details about the current status of the model package.


=head2 ModelPackageVersion => Int

The version of the model package.


=head2 SourceAlgorithmSpecification => L<Paws::SageMaker::SourceAlgorithmSpecification>

Details about the algorithm that was used to create the model package.


=head2 ValidationSpecification => L<Paws::SageMaker::ModelPackageValidationSpecification>

Configurations for one or more transform jobs that Amazon SageMaker
runs to test the model package.


=head2 _request_id => Str


=cut

1;