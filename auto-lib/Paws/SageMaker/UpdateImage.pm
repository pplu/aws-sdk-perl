
package Paws::SageMaker::UpdateImage;
  use Moose;
  has DeleteProperties => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ImageName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateImageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateImage - Arguments for method UpdateImage on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateImage on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateImage.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateImageResponse = $api . sagemaker->UpdateImage(
      ImageName        => 'MyImageName',
      DeleteProperties => [
        'MyImageDeleteProperty', ...    # min: 1, max: 11
      ],    # OPTIONAL
      Description => 'MyImageDescription',    # OPTIONAL
      DisplayName => 'MyImageDisplayName',    # OPTIONAL
      RoleArn     => 'MyRoleArn',             # OPTIONAL
    );

    # Results:
    my $ImageArn = $UpdateImageResponse->ImageArn;

    # Returns a L<Paws::SageMaker::UpdateImageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateImage>

=head1 ATTRIBUTES


=head2 DeleteProperties => ArrayRef[Str|Undef]

A list of properties to delete. Only the C<Description> and
C<DisplayName> properties can be deleted.



=head2 Description => Str

The new description for the image.



=head2 DisplayName => Str

The new display name for the image.



=head2 B<REQUIRED> ImageName => Str

The name of the image to update.



=head2 RoleArn => Str

The new Amazon Resource Name (ARN) for the IAM role that enables Amazon
SageMaker to perform tasks on your behalf.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateImage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

