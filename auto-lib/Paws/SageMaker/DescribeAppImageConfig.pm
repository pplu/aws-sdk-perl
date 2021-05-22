
package Paws::SageMaker::DescribeAppImageConfig;
  use Moose;
  has AppImageConfigName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAppImageConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeAppImageConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAppImageConfig - Arguments for method DescribeAppImageConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAppImageConfig on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeAppImageConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAppImageConfig.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeAppImageConfigResponse =
      $api . sagemaker->DescribeAppImageConfig(
      AppImageConfigName => 'MyAppImageConfigName',

      );

    # Results:
    my $AppImageConfigArn = $DescribeAppImageConfigResponse->AppImageConfigArn;
    my $AppImageConfigName =
      $DescribeAppImageConfigResponse->AppImageConfigName;
    my $CreationTime = $DescribeAppImageConfigResponse->CreationTime;
    my $KernelGatewayImageConfig =
      $DescribeAppImageConfigResponse->KernelGatewayImageConfig;
    my $LastModifiedTime = $DescribeAppImageConfigResponse->LastModifiedTime;

    # Returns a L<Paws::SageMaker::DescribeAppImageConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeAppImageConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppImageConfigName => Str

The name of the AppImageConfig to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAppImageConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

