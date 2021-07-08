
package Paws::AppStream::CreateUpdatedImage;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has ExistingImageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'existingImageName' , required => 1);
  has NewImageDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'newImageDescription' );
  has NewImageDisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'newImageDisplayName' );
  has NewImageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'newImageName' , required => 1);
  has NewImageTags => (is => 'ro', isa => 'Paws::AppStream::Tags', traits => ['NameInRequest'], request_name => 'newImageTags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUpdatedImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateUpdatedImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateUpdatedImage - Arguments for method CreateUpdatedImage on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUpdatedImage on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateUpdatedImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUpdatedImage.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateUpdatedImageResult = $appstream2->CreateUpdatedImage(
      ExistingImageName   => 'MyName',
      NewImageName        => 'MyName',
      DryRun              => 1,                  # OPTIONAL
      NewImageDescription => 'MyDescription',    # OPTIONAL
      NewImageDisplayName => 'MyDisplayName',    # OPTIONAL
      NewImageTags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CanUpdateImage = $CreateUpdatedImageResult->CanUpdateImage;
    my $Image          = $CreateUpdatedImageResult->Image;

    # Returns a L<Paws::AppStream::CreateUpdatedImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateUpdatedImage>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Indicates whether to display the status of image update availability
before AppStream 2.0 initiates the process of creating a new updated
image. If this value is set to C<true>, AppStream 2.0 displays whether
image updates are available. If this value is set to C<false>,
AppStream 2.0 initiates the process of creating a new updated image
without displaying whether image updates are available.



=head2 B<REQUIRED> ExistingImageName => Str

The name of the image to update.



=head2 NewImageDescription => Str

The description to display for the new image.



=head2 NewImageDisplayName => Str

The name to display for the new image.



=head2 B<REQUIRED> NewImageName => Str

The name of the new image. The name must be unique within the AWS
account and Region.



=head2 NewImageTags => L<Paws::AppStream::Tags>

The tags to associate with the new image. A tag is a key-value pair,
and the value is optional. For example, Environment=Test. If you do not
specify a value, Environment=.

Generally allowed characters are: letters, numbers, and spaces
representable in UTF-8, and the following special characters:

_ . : / = + \ - @

If you do not specify a value, the value is set to an empty string.

For more information about tags, see Tagging Your Resources
(https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
in the I<Amazon AppStream 2.0 Administration Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUpdatedImage in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

