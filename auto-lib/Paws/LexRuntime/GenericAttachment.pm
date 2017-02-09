package Paws::LexRuntime::GenericAttachment;
  use Moose;
  has AttachmentLinkUrl => (is => 'ro', isa => 'Str', xmlname => 'attachmentLinkUrl', request_name => 'attachmentLinkUrl', traits => ['Unwrapped','NameInRequest']);
  has Buttons => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntime::Button]', xmlname => 'buttons', request_name => 'buttons', traits => ['Unwrapped','NameInRequest']);
  has ImageUrl => (is => 'ro', isa => 'Str', xmlname => 'imageUrl', request_name => 'imageUrl', traits => ['Unwrapped','NameInRequest']);
  has SubTitle => (is => 'ro', isa => 'Str', xmlname => 'subTitle', request_name => 'subTitle', traits => ['Unwrapped','NameInRequest']);
  has Title => (is => 'ro', isa => 'Str', xmlname => 'title', request_name => 'title', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntime::GenericAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexRuntime::GenericAttachment object:

  $service_obj->Method(Att1 => { AttachmentLinkUrl => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexRuntime::GenericAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentLinkUrl

=head1 DESCRIPTION

Represents an option rendered to the user when a prompt is shown. It
could be an image, a button, a link, or text.

=head1 ATTRIBUTES


=head2 AttachmentLinkUrl => Str

  


=head2 Buttons => ArrayRef[L<Paws::LexRuntime::Button>]

  List of options to show to the user.


=head2 ImageUrl => Str

  URL of an image that is displayed to the user.


=head2 SubTitle => Str

  Subtitle shown below the title.


=head2 Title => Str

  Title of the option.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

