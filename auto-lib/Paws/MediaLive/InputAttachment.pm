package Paws::MediaLive::InputAttachment;
  use Moose;
  has InputAttachmentName => (is => 'ro', isa => 'Str', request_name => 'inputAttachmentName', traits => ['NameInRequest']);
  has InputId => (is => 'ro', isa => 'Str', request_name => 'inputId', traits => ['NameInRequest']);
  has InputSettings => (is => 'ro', isa => 'Paws::MediaLive::InputSettings', request_name => 'inputSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputAttachment object:

  $service_obj->Method(Att1 => { InputAttachmentName => $value, ..., InputSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->InputAttachmentName

=head1 DESCRIPTION

Placeholder documentation for InputAttachment

=head1 ATTRIBUTES


=head2 InputAttachmentName => Str

  User-specified name for the attachment. This is required if the user
wants to use this input in an input switch action.


=head2 InputId => Str

  The ID of the input


=head2 InputSettings => L<Paws::MediaLive::InputSettings>

  Settings of an input (caption selector, etc.)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

