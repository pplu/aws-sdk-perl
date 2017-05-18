package Paws::AppStream::Image;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::Application]');
  has Arn => (is => 'ro', isa => 'Str');
  has BaseImageArn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ImageBuilderSupported => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str');
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

New streaming instances are booted from images. The image stores the
application catalog and is connected to fleets.

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::AppStream::Application>]

  The applications associated with an image.


=head2 Arn => Str

  The ARN for the image.


=head2 BaseImageArn => Str

  The source image ARN from which this image was created.


=head2 CreatedTime => Str

  The timestamp when the image was created.


=head2 Description => Str

  A meaningful description for the image.


=head2 DisplayName => Str

  The display name for the image.


=head2 ImageBuilderSupported => Bool

  Indicates whether an image builder can be launched from this image.


=head2 B<REQUIRED> Name => Str

  The unique identifier for the image.


=head2 Platform => Str

  The operating system platform of the image.


=head2 State => Str

  The image starts in the B<PENDING> state, and then moves to
B<AVAILABLE> if image creation succeeds and B<FAILED> if image creation
has failed.


=head2 StateChangeReason => L<Paws::AppStream::ImageStateChangeReason>

  The reason why the last state change occurred.


=head2 Visibility => Str

  The visibility of an image to the user; images can be public or
private.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

