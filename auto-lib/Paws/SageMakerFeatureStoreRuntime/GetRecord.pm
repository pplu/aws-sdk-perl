
package Paws::SageMakerFeatureStoreRuntime::GetRecord;
  use Moose;
  has FeatureGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FeatureGroupName', required => 1);
  has FeatureNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'FeatureName');
  has RecordIdentifierValueAsString => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'RecordIdentifierValueAsString', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecord');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/FeatureGroup/{FeatureGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMakerFeatureStoreRuntime::GetRecordResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerFeatureStoreRuntime::GetRecord - Arguments for method GetRecord on L<Paws::SageMakerFeatureStoreRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecord on the
L<Amazon SageMaker Feature Store Runtime|Paws::SageMakerFeatureStoreRuntime> service. Use the attributes of this class
as arguments to method GetRecord.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecord.

=head1 SYNOPSIS

    my $featurestore-runtime.sagemaker = Paws->service('SageMakerFeatureStoreRuntime');
    my $GetRecordResponse = $featurestore -runtime . sagemaker->GetRecord(
      FeatureGroupName              => 'MyFeatureGroupName',
      RecordIdentifierValueAsString => 'MyValueAsString',
      FeatureNames                  => [
        'MyFeatureName', ...    # min: 1, max: 64
      ],    # OPTIONAL
    );

    # Results:
    my $Record = $GetRecordResponse->Record;

    # Returns a L<Paws::SageMakerFeatureStoreRuntime::GetRecordResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/featurestore-runtime.sagemaker/GetRecord>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeatureGroupName => Str

The name of the feature group in which you want to put the records.



=head2 FeatureNames => ArrayRef[Str|Undef]

List of names of Features to be retrieved. If not specified, the latest
value for all the Features are returned.



=head2 B<REQUIRED> RecordIdentifierValueAsString => Str

The value that corresponds to C<RecordIdentifier> type and uniquely
identifies the record in the C<FeatureGroup>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecord in L<Paws::SageMakerFeatureStoreRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

