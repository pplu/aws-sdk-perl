
package Paws::SageMaker::DescribeModelPackageGroup;
  use Moose;
  has ModelPackageGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModelPackageGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeModelPackageGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelPackageGroup - Arguments for method DescribeModelPackageGroup on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModelPackageGroup on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeModelPackageGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModelPackageGroup.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeModelPackageGroupOutput =
      $api . sagemaker->DescribeModelPackageGroup(
      ModelPackageGroupName => 'MyArnOrName',

      );

    # Results:
    my $CreatedBy    = $DescribeModelPackageGroupOutput->CreatedBy;
    my $CreationTime = $DescribeModelPackageGroupOutput->CreationTime;
    my $ModelPackageGroupArn =
      $DescribeModelPackageGroupOutput->ModelPackageGroupArn;
    my $ModelPackageGroupDescription =
      $DescribeModelPackageGroupOutput->ModelPackageGroupDescription;
    my $ModelPackageGroupName =
      $DescribeModelPackageGroupOutput->ModelPackageGroupName;
    my $ModelPackageGroupStatus =
      $DescribeModelPackageGroupOutput->ModelPackageGroupStatus;

    # Returns a L<Paws::SageMaker::DescribeModelPackageGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeModelPackageGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelPackageGroupName => Str

The name of the model group to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModelPackageGroup in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

