
package Paws::Quicksight::DescribeDataSet;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/data-sets/{DataSetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeDataSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeDataSet - Arguments for method DescribeDataSet on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataSet on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataSet.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeDataSetResponse = $quicksight->DescribeDataSet(
      AwsAccountId => 'MyAwsAccountId',
      DataSetId    => 'MyResourceId',

    );

    # Results:
    my $DataSet   = $DescribeDataSetResponse->DataSet;
    my $RequestId = $DescribeDataSetResponse->RequestId;
    my $Status    = $DescribeDataSetResponse->Status;

    # Returns a L<Paws::Quicksight::DescribeDataSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeDataSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS Account ID.



=head2 B<REQUIRED> DataSetId => Str

The ID for the dataset that you want to create. This ID is unique per
AWS Region for each AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataSet in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

