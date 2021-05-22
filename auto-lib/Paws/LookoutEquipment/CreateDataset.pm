
package Paws::LookoutEquipment::CreateDataset;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has DatasetSchema => (is => 'ro', isa => 'Paws::LookoutEquipment::DatasetSchema', required => 1);
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::CreateDatasetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::CreateDataset - Arguments for method CreateDataset on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataset on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method CreateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataset.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $CreateDatasetResponse = $lookoutequipment->CreateDataset(
      ClientToken   => 'MyIdempotenceToken',
      DatasetName   => 'MyDatasetName',
      DatasetSchema => {
        InlineDataSchema =>
          'MyInlineDataSchema',    # min: 1, max: 1000000; OPTIONAL
      },
      ServerSideKmsKeyId => 'MyNameOrArn',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',                # min: 1, max: 128
          Value => 'MyTagValue',              # max: 256

        },
        ...
      ],                                      # OPTIONAL
    );

    # Results:
    my $DatasetArn  = $CreateDatasetResponse->DatasetArn;
    my $DatasetName = $CreateDatasetResponse->DatasetName;
    my $Status      = $CreateDatasetResponse->Status;

    # Returns a L<Paws::LookoutEquipment::CreateDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/CreateDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A unique identifier for the request. If you do not set the client
request token, Amazon Lookout for Equipment generates one.



=head2 B<REQUIRED> DatasetName => Str

The name of the dataset being created.



=head2 B<REQUIRED> DatasetSchema => L<Paws::LookoutEquipment::DatasetSchema>

A JSON description of the data that is in each time series dataset,
including names, column names, and data types.



=head2 ServerSideKmsKeyId => Str

Provides the identifier of the AWS KMS customer master key (CMK) used
to encrypt dataset data by Amazon Lookout for Equipment.



=head2 Tags => ArrayRef[L<Paws::LookoutEquipment::Tag>]

Any tags associated with the ingested data described in the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataset in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

