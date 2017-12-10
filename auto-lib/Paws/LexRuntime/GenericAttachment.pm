package Paws::LexRuntime::GenericAttachment;
  use Moose;
  has AttachmentLinkUrl => (is => 'ro', isa => 'Str', request_name => 'attachmentLinkUrl', traits => ['NameInRequest']);
  has Buttons => (is => 'ro', isa => 'ArrayRef[Paws::LexRuntime::Button]', request_name => 'buttons', traits => ['NameInRequest']);
  has ImageUrl => (is => 'ro', isa => 'Str', request_name => 'imageUrl', traits => ['NameInRequest']);
  has SubTitle => (is => 'ro', isa => 'Str', request_name => 'subTitle', traits => ['NameInRequest']);
  has Title => (is => 'ro', isa => 'Str', request_name => 'title', traits => ['NameInRequest']);
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

  The URL of an attachment to the response card.


=head2 Buttons => ArrayRef[L<Paws::LexRuntime::Button>]

  The list of options to show to the user.


=head2 ImageUrl => Str

  The URL of an image that is displayed to the user.


=head2 SubTitle => Str

  The subtitle shown below the title.


=head2 Title => Str

  The title of the option.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

