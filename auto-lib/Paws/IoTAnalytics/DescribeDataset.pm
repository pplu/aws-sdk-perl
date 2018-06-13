
package Paws::IoTAnalytics::DescribeDataset;
  use Moose;
  has DatasetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::DescribeDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeDataset - Arguments for method DescribeDataset on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataset on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method DescribeDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataset.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $DescribeDatasetResponse = $iotanalytics->DescribeDataset(
      DatasetName => 'MyDatasetName',

    );

    # Results:
    my $Dataset = $DescribeDatasetResponse->Dataset;

    # Returns a L<Paws::IoTAnalytics::DescribeDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/DescribeDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetName => Str

The name of the data set whose information is retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataset in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

