
package Paws::SageMaker::DescribeImageVersion;
  use Moose;
  has ImageName => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImageVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeImageVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeImageVersion - Arguments for method DescribeImageVersion on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImageVersion on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeImageVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImageVersion.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeImageVersionResponse = $api . sagemaker->DescribeImageVersion(
      ImageName => 'MyImageName',
      Version   => 1,               # OPTIONAL
    );

    # Results:
    my $BaseImage          = $DescribeImageVersionResponse->BaseImage;
    my $ContainerImage     = $DescribeImageVersionResponse->ContainerImage;
    my $CreationTime       = $DescribeImageVersionResponse->CreationTime;
    my $FailureReason      = $DescribeImageVersionResponse->FailureReason;
    my $ImageArn           = $DescribeImageVersionResponse->ImageArn;
    my $ImageVersionArn    = $DescribeImageVersionResponse->ImageVersionArn;
    my $ImageVersionStatus = $DescribeImageVersionResponse->ImageVersionStatus;
    my $LastModifiedTime   = $DescribeImageVersionResponse->LastModifiedTime;
    my $Version            = $DescribeImageVersionResponse->Version;

    # Returns a L<Paws::SageMaker::DescribeImageVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeImageVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImageName => Str

The name of the image.



=head2 Version => Int

The version of the image. If not specified, the latest version is
described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImageVersion in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

