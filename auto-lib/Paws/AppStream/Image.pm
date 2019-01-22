package Paws::AppStream::Image;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::Application]');
  has AppstreamAgentVersion => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has BaseImageArn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ImageBuilderSupported => (is => 'ro', isa => 'Bool');
  has ImagePermissions => (is => 'ro', isa => 'Paws::AppStream::ImagePermissions');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str');
  has PublicBaseImageReleasedDate => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Paws::AppStream::ImageStateChangeReason');
  has Visibility => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::Image

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::Image object:

  $service_obj->Method(Att1 => { Applications => $value, ..., Visibility => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::Image object:

  $result = $service_obj->Method(...);
  $result->Att1->Applications

=head1 DESCRIPTION

Describes an image.

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::AppStream::Application>]

  The applications associated with the image.


=head2 AppstreamAgentVersion => Str

  The version of the AppStream 2.0 agent to use for instances that are
launched from this image.


=head2 Arn => Str

  The ARN of the image.


=head2 BaseImageArn => Str

  The ARN of the image from which this image was created.


=head2 CreatedTime => Str

  The time the image was created.


=head2 Description => Str

  The description to display.


=head2 DisplayName => Str

  The image name to display.


=head2 ImageBuilderSupported => Bool

  Indicates whether an image builder can be launched from this image.


=head2 ImagePermissions => L<Paws::AppStream::ImagePermissions>

  The permissions to provide to the destination AWS account for the
specified image.


=head2 B<REQUIRED> Name => Str

  The name of the image.


=head2 Platform => Str

  The operating system platform of the image.


=head2 PublicBaseImageReleasedDate => Str

  The release date of the public base image. For private images, this
date is the release date of the base image from which the image was
created.


=head2 State => Str

  The image starts in the C<PENDING> state. If image creation succeeds,
the state is C<AVAILABLE>. If image creation fails, the state is
C<FAILED>.


=head2 StateChangeReason => L<Paws::AppStream::ImageStateChangeReason>

  The reason why the last state change occurred.


=head2 Visibility => Str

  Indicates whether the image is public or private.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

