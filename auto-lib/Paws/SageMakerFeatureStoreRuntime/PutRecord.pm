
package Paws::SageMakerFeatureStoreRuntime::PutRecord;
  use Moose;
  has FeatureGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FeatureGroupName', required => 1);
  has Record => (is => 'ro', isa => 'ArrayRef[Paws::SageMakerFeatureStoreRuntime::FeatureValue]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRecord');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/FeatureGroup/{FeatureGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerFeatureStoreRuntime::PutRecord - Arguments for method PutRecord on L<Paws::SageMakerFeatureStoreRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRecord on the
L<Amazon SageMaker Feature Store Runtime|Paws::SageMakerFeatureStoreRuntime> service. Use the attributes of this class
as arguments to method PutRecord.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRecord.

=head1 SYNOPSIS

    my $featurestore-runtime.sagemaker = Paws->service('SageMakerFeatureStoreRuntime');
    $featurestore -runtime . sagemaker->PutRecord(
      FeatureGroupName => 'MyFeatureGroupName',
      Record           => [
        {
          FeatureName   => 'MyFeatureName',      # min: 1, max: 64
          ValueAsString => 'MyValueAsString',    # max: 358400

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/featurestore-runtime.sagemaker/PutRecord>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeatureGroupName => Str

The name of the feature group that you want to insert the record into.



=head2 B<REQUIRED> Record => ArrayRef[L<Paws::SageMakerFeatureStoreRuntime::FeatureValue>]

List of FeatureValues to be inserted. This will be a full over-write.
If you only want to update few of the feature values, do the following:

=over

=item *

Use C<GetRecord> to retrieve the latest record.

=item *

Update the record returned from C<GetRecord>.

=item *

Use C<PutRecord> to update feature values.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRecord in L<Paws::SageMakerFeatureStoreRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

