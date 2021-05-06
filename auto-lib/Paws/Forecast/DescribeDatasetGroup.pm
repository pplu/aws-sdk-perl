
package Paws::Forecast::DescribeDatasetGroup;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDatasetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::DescribeDatasetGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeDatasetGroup - Arguments for method DescribeDatasetGroup on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDatasetGroup on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribeDatasetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDatasetGroup.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribeDatasetGroupResponse = $forecast->DescribeDatasetGroup(
      DatasetGroupArn => 'MyArn',

    );

    # Results:
    my $CreationTime     = $DescribeDatasetGroupResponse->CreationTime;
    my $DatasetArns      = $DescribeDatasetGroupResponse->DatasetArns;
    my $DatasetGroupArn  = $DescribeDatasetGroupResponse->DatasetGroupArn;
    my $DatasetGroupName = $DescribeDatasetGroupResponse->DatasetGroupName;
    my $Domain           = $DescribeDatasetGroupResponse->Domain;
    my $LastModificationTime =
      $DescribeDatasetGroupResponse->LastModificationTime;
    my $Status = $DescribeDatasetGroupResponse->Status;

    # Returns a L<Paws::Forecast::DescribeDatasetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribeDatasetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the dataset group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDatasetGroup in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

