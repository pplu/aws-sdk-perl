
package Paws::SageMakerFeatureStoreRuntime::DeleteRecord;
  use Moose;
  has EventTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EventTime', required => 1);
  has FeatureGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FeatureGroupName', required => 1);
  has RecordIdentifierValueAsString => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'RecordIdentifierValueAsString', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRecord');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/FeatureGroup/{FeatureGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerFeatureStoreRuntime::DeleteRecord - Arguments for method DeleteRecord on L<Paws::SageMakerFeatureStoreRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRecord on the
L<Amazon SageMaker Feature Store Runtime|Paws::SageMakerFeatureStoreRuntime> service. Use the attributes of this class
as arguments to method DeleteRecord.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRecord.

=head1 SYNOPSIS

    my $featurestore-runtime.sagemaker = Paws->service('SageMakerFeatureStoreRuntime');
    $featurestore -runtime . sagemaker->DeleteRecord(
      EventTime                     => 'MyValueAsString',
      FeatureGroupName              => 'MyFeatureGroupName',
      RecordIdentifierValueAsString => 'MyValueAsString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/featurestore-runtime.sagemaker/DeleteRecord>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventTime => Str

Timestamp indicating when the deletion event occurred. C<EventTime> can
be used to query data at a certain point in time.



=head2 B<REQUIRED> FeatureGroupName => Str

The name of the feature group to delete the record from.



=head2 B<REQUIRED> RecordIdentifierValueAsString => Str

The value for the C<RecordIdentifier> that uniquely identifies the
record, in string format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRecord in L<Paws::SageMakerFeatureStoreRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

