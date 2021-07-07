
package Paws::SageMakerFeatureStoreRuntime::BatchGetRecordResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerFeatureStoreRuntime::BatchGetRecordError]', required => 1);
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerFeatureStoreRuntime::BatchGetRecordResultDetail]', required => 1);
  has UnprocessedIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerFeatureStoreRuntime::BatchGetRecordIdentifier]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerFeatureStoreRuntime::BatchGetRecordResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::SageMakerFeatureStoreRuntime::BatchGetRecordError>]

A list of errors that have occured when retrieving a batch of Records.


=head2 B<REQUIRED> Records => ArrayRef[L<Paws::SageMakerFeatureStoreRuntime::BatchGetRecordResultDetail>]

A list of Records you requested to be retrieved in batch.


=head2 B<REQUIRED> UnprocessedIdentifiers => ArrayRef[L<Paws::SageMakerFeatureStoreRuntime::BatchGetRecordIdentifier>]

A unprocessed list of C<FeatureGroup> names, with their corresponding
C<RecordIdentifier> value, and Feature name.


=head2 _request_id => Str


=cut

