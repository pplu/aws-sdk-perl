# Generated from json/callargs_class.tt

package Paws::Forecast::DescribeDataset;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw//;
  has DatasetArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDataset');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Forecast::DescribeDatasetResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DatasetArn' => 1
                  },
  'types' => {
               'DatasetArn' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeDataset - Arguments for method DescribeDataset on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataset on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribeDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataset.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribeDatasetResponse = $forecast->DescribeDataset(
      DatasetArn => 'MyArn',

    );

    # Results:
    my $CreationTime         = $DescribeDatasetResponse->CreationTime;
    my $DataFrequency        = $DescribeDatasetResponse->DataFrequency;
    my $DatasetArn           = $DescribeDatasetResponse->DatasetArn;
    my $DatasetName          = $DescribeDatasetResponse->DatasetName;
    my $DatasetType          = $DescribeDatasetResponse->DatasetType;
    my $Domain               = $DescribeDatasetResponse->Domain;
    my $EncryptionConfig     = $DescribeDatasetResponse->EncryptionConfig;
    my $LastModificationTime = $DescribeDatasetResponse->LastModificationTime;
    my $Schema               = $DescribeDatasetResponse->Schema;
    my $Status               = $DescribeDatasetResponse->Status;

    # Returns a L<Paws::Forecast::DescribeDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribeDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataset in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

