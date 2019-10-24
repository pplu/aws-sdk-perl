# Generated from json/callargs_class.tt

package Paws::Personalize::DescribeDatasetImportJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has DatasetImportJobArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDatasetImportJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::DescribeDatasetImportJobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatasetImportJobArn' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'DatasetImportJobArn' => 'datasetImportJobArn'
                     },
  'IsRequired' => {
                    'DatasetImportJobArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeDatasetImportJob - Arguments for method DescribeDatasetImportJob on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDatasetImportJob on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method DescribeDatasetImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDatasetImportJob.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $DescribeDatasetImportJobResponse =
      $personalize->DescribeDatasetImportJob(
      DatasetImportJobArn => 'MyArn',

      );

    # Results:
    my $DatasetImportJob = $DescribeDatasetImportJobResponse->DatasetImportJob;

    # Returns a L<Paws::Personalize::DescribeDatasetImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/DescribeDatasetImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetImportJobArn => Str

The Amazon Resource Name (ARN) of the dataset import job to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDatasetImportJob in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

