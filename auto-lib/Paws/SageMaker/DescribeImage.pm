
package Paws::SageMaker::DescribeImage;
  use Moose;
  has ImageName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeImageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeImage - Arguments for method DescribeImage on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImage on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImage.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeImageResponse = $api . sagemaker->DescribeImage(
      ImageName => 'MyImageName',

    );

    # Results:
    my $CreationTime     = $DescribeImageResponse->CreationTime;
    my $Description      = $DescribeImageResponse->Description;
    my $DisplayName      = $DescribeImageResponse->DisplayName;
    my $FailureReason    = $DescribeImageResponse->FailureReason;
    my $ImageArn         = $DescribeImageResponse->ImageArn;
    my $ImageName        = $DescribeImageResponse->ImageName;
    my $ImageStatus      = $DescribeImageResponse->ImageStatus;
    my $LastModifiedTime = $DescribeImageResponse->LastModifiedTime;
    my $RoleArn          = $DescribeImageResponse->RoleArn;

    # Returns a L<Paws::SageMaker::DescribeImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageName => Str

The name of the image to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

