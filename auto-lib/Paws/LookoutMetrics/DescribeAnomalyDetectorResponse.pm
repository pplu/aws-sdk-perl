
package Paws::LookoutMetrics::DescribeAnomalyDetectorResponse;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str');
  has AnomalyDetectorConfig => (is => 'ro', isa => 'Paws::LookoutMetrics::AnomalyDetectorConfigSummary');
  has AnomalyDetectorDescription => (is => 'ro', isa => 'Str');
  has AnomalyDetectorName => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::DescribeAnomalyDetectorResponse

=head1 ATTRIBUTES


=head2 AnomalyDetectorArn => Str

The ARN of the detector.


=head2 AnomalyDetectorConfig => L<Paws::LookoutMetrics::AnomalyDetectorConfigSummary>

Contains information about the detector's configuration.


=head2 AnomalyDetectorDescription => Str

A description of the detector.


=head2 AnomalyDetectorName => Str

The name of the detector.


=head2 CreationTime => Str

The time at which the detector was created.


=head2 FailureReason => Str

The reason that the detector failed, if any.


=head2 KmsKeyArn => Str

The ARN of the KMS key to use to encrypt your data.


=head2 LastModificationTime => Str

The time at which the detector was last modified.


=head2 Status => Str

The status of the detector.

Valid values are: C<"ACTIVE">, C<"ACTIVATING">, C<"DELETING">, C<"FAILED">, C<"INACTIVE">, C<"BACK_TEST_ACTIVATING">, C<"BACK_TEST_ACTIVE">, C<"BACK_TEST_COMPLETE">
=head2 _request_id => Str


=cut

