
package Paws::SageMaker::DescribeProject;
  use Moose;
  has ProjectName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeProjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeProject - Arguments for method DescribeProject on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProject on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProject.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeProjectOutput = $api . sagemaker->DescribeProject(
      ProjectName => 'MyProjectEntityName',

    );

    # Results:
    my $CreatedBy          = $DescribeProjectOutput->CreatedBy;
    my $CreationTime       = $DescribeProjectOutput->CreationTime;
    my $ProjectArn         = $DescribeProjectOutput->ProjectArn;
    my $ProjectDescription = $DescribeProjectOutput->ProjectDescription;
    my $ProjectId          = $DescribeProjectOutput->ProjectId;
    my $ProjectName        = $DescribeProjectOutput->ProjectName;
    my $ProjectStatus      = $DescribeProjectOutput->ProjectStatus;
    my $ServiceCatalogProvisionedProductDetails =
      $DescribeProjectOutput->ServiceCatalogProvisionedProductDetails;
    my $ServiceCatalogProvisioningDetails =
      $DescribeProjectOutput->ServiceCatalogProvisioningDetails;

    # Returns a L<Paws::SageMaker::DescribeProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProjectName => Str

The name of the project to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProject in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

