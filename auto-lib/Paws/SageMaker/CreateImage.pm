
package Paws::SageMaker::CreateImage;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateImageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateImage - Arguments for method CreateImage on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImage on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImage.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateImageResponse = $api . sagemaker->CreateImage(
      ImageName   => 'MyImageName',
      RoleArn     => 'MyRoleArn',
      Description => 'MyImageDescription',    # OPTIONAL
      DisplayName => 'MyImageDisplayName',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ImageArn = $CreateImageResponse->ImageArn;

    # Returns a L<Paws::SageMaker::CreateImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateImage>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the image.



=head2 DisplayName => Str

The display name of the image. If not provided, C<ImageName> is
displayed.



=head2 B<REQUIRED> ImageName => Str

The name of the image. Must be unique to your account.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that enables Amazon
SageMaker to perform tasks on your behalf.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags to apply to the image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

