
package Paws::SageMakerFeatureStoreRuntime::BatchGetRecord;
  use Moose;
  has Identifiers => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerFeatureStoreRuntime::BatchGetRecordIdentifier]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetRecord');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/BatchGetRecord');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerFeatureStoreRuntime::BatchGetRecordResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerFeatureStoreRuntime::BatchGetRecord - Arguments for method BatchGetRecord on L<Paws::SageMakerFeatureStoreRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetRecord on the
L<Amazon SageMaker Feature Store Runtime|Paws::SageMakerFeatureStoreRuntime> service. Use the attributes of this class
as arguments to method BatchGetRecord.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetRecord.

=head1 SYNOPSIS

    my $featurestore-runtime.sagemaker = Paws->service('SageMakerFeatureStoreRuntime');
    my $BatchGetRecordResponse =
      $featurestore -runtime . sagemaker->BatchGetRecord(
      Identifiers => [
        {
          FeatureGroupName => 'MyFeatureGroupName',    # min: 1, max: 64
          RecordIdentifiersValueAsString => [
            'MyValueAsString', ...                     # max: 358400
          ],    # min: 1, max: 100
          FeatureNames => [
            'MyFeatureName', ...    # min: 1, max: 64
          ],    # min: 1; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $Errors  = $BatchGetRecordResponse->Errors;
    my $Records = $BatchGetRecordResponse->Records;
    my $UnprocessedIdentifiers =
      $BatchGetRecordResponse->UnprocessedIdentifiers;

# Returns a L<Paws::SageMakerFeatureStoreRuntime::BatchGetRecordResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/featurestore-runtime.sagemaker/BatchGetRecord>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifiers => ArrayRef[L<Paws::SageMakerFeatureStoreRuntime::BatchGetRecordIdentifier>]

A list of C<FeatureGroup> names, with their corresponding
C<RecordIdentifier> value, and Feature name that have been requested to
be retrieved in batch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetRecord in L<Paws::SageMakerFeatureStoreRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

