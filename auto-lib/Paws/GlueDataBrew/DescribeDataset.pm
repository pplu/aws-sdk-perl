
package Paws::GlueDataBrew::DescribeDataset;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlueDataBrew::DescribeDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::DescribeDataset - Arguments for method DescribeDataset on L<Paws::GlueDataBrew>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataset on the
L<AWS Glue DataBrew|Paws::GlueDataBrew> service. Use the attributes of this class
as arguments to method DescribeDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataset.

=head1 SYNOPSIS

    my $databrew = Paws->service('GlueDataBrew');
    my $DescribeDatasetResponse = $databrew->DescribeDataset(
      Name => 'MyDatasetName',

    );

    # Results:
    my $CreateDate       = $DescribeDatasetResponse->CreateDate;
    my $CreatedBy        = $DescribeDatasetResponse->CreatedBy;
    my $Format           = $DescribeDatasetResponse->Format;
    my $FormatOptions    = $DescribeDatasetResponse->FormatOptions;
    my $Input            = $DescribeDatasetResponse->Input;
    my $LastModifiedBy   = $DescribeDatasetResponse->LastModifiedBy;
    my $LastModifiedDate = $DescribeDatasetResponse->LastModifiedDate;
    my $Name             = $DescribeDatasetResponse->Name;
    my $PathOptions      = $DescribeDatasetResponse->PathOptions;
    my $ResourceArn      = $DescribeDatasetResponse->ResourceArn;
    my $Source           = $DescribeDatasetResponse->Source;
    my $Tags             = $DescribeDatasetResponse->Tags;

    # Returns a L<Paws::GlueDataBrew::DescribeDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/databrew/DescribeDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the dataset to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataset in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

