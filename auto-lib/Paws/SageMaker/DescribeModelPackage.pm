
package Paws::SageMaker::DescribeModelPackage;
  use Moose;
  has ModelPackageName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModelPackage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeModelPackageOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelPackage - Arguments for method DescribeModelPackage on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModelPackage on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeModelPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModelPackage.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeModelPackageOutput = $api . sagemaker->DescribeModelPackage(
      ModelPackageName => 'MyArnOrName',

    );

    # Results:
    my $CertifyForMarketplace =
      $DescribeModelPackageOutput->CertifyForMarketplace;
    my $CreationTime = $DescribeModelPackageOutput->CreationTime;
    my $InferenceSpecification =
      $DescribeModelPackageOutput->InferenceSpecification;
    my $ModelPackageArn = $DescribeModelPackageOutput->ModelPackageArn;
    my $ModelPackageDescription =
      $DescribeModelPackageOutput->ModelPackageDescription;
    my $ModelPackageName   = $DescribeModelPackageOutput->ModelPackageName;
    my $ModelPackageStatus = $DescribeModelPackageOutput->ModelPackageStatus;
    my $ModelPackageStatusDetails =
      $DescribeModelPackageOutput->ModelPackageStatusDetails;
    my $SourceAlgorithmSpecification =
      $DescribeModelPackageOutput->SourceAlgorithmSpecification;
    my $ValidationSpecification =
      $DescribeModelPackageOutput->ValidationSpecification;

    # Returns a L<Paws::SageMaker::DescribeModelPackageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeModelPackage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageName => Str

The name of the model package to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModelPackage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

