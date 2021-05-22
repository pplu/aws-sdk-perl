
package Paws::SageMaker::CreateImageVersion;
  use Moose;
  has BaseImage => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has ImageName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImageVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateImageVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateImageVersion - Arguments for method CreateImageVersion on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImageVersion on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateImageVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImageVersion.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateImageVersionResponse = $api . sagemaker->CreateImageVersion(
      BaseImage   => 'MyImageBaseImage',
      ClientToken => 'MyClientToken',
      ImageName   => 'MyImageName',

    );

    # Results:
    my $ImageVersionArn = $CreateImageVersionResponse->ImageVersionArn;

    # Returns a L<Paws::SageMaker::CreateImageVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateImageVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseImage => Str

The registry path of the container image to use as the starting point
for this version. The path is an Amazon Container Registry (ECR) URI in
the following format:

C<E<lt>acct-idE<gt>.dkr.ecr.E<lt>regionE<gt>.amazonaws.com/E<lt>repo-name[:tag]
or [@digest]E<gt>>



=head2 B<REQUIRED> ClientToken => Str

A unique ID. If not specified, the AWS CLI and AWS SDKs, such as the
SDK for Python (Boto3), add a unique value to the call.



=head2 B<REQUIRED> ImageName => Str

The C<ImageName> of the C<Image> to create a version of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImageVersion in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

