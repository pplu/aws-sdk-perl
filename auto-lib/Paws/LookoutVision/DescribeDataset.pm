
package Paws::LookoutVision::DescribeDataset;
  use Moose;
  has DatasetType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetType', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects/{projectName}/datasets/{datasetType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::DescribeDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::DescribeDataset - Arguments for method DescribeDataset on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataset on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method DescribeDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataset.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $DescribeDatasetResponse = $lookoutvision->DescribeDataset(
      DatasetType => 'MyDatasetType',
      ProjectName => 'MyProjectName',

    );

    # Results:
    my $DatasetDescription = $DescribeDatasetResponse->DatasetDescription;

    # Returns a L<Paws::LookoutVision::DescribeDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/DescribeDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetType => Str

The type of the dataset to describe. Specify C<train> to describe the
training dataset. Specify C<test> to describe the test dataset. If you
have a single dataset project, specify C<train>



=head2 B<REQUIRED> ProjectName => Str

The name of the project that contains the dataset that you want to
describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataset in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

