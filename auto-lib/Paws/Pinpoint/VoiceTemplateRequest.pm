package Paws::Pinpoint::VoiceTemplateRequest;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has DefaultSubstitutions => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', request_name => 'tags', traits => ['NameInRequest']);
  has TemplateDescription => (is => 'ro', isa => 'Str');
  has VoiceId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::VoiceTemplateRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::VoiceTemplateRequest object:

  $service_obj->Method(Att1 => { Body => $value, ..., VoiceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::VoiceTemplateRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Specifies the content and settings for a message template that can be
used in messages that are sent through the voice channel.

=head1 ATTRIBUTES


=head2 Body => Str

  The text of the script to use in messages that are based on the message
template, in plain text format.


=head2 DefaultSubstitutions => Str

  A JSON object that specifies the default values to use for message
variables in the message template. This object is a set of key-value
pairs. Each key defines a message variable in the template. The
corresponding value defines the default value for that variable. When
you create a message that's based on the template, you can override
these defaults with message-specific and address-specific variables and
values.


=head2 LanguageCode => Str

  The code for the language to use when synthesizing the text of the
script in messages that are based on the message template. For a list
of supported languages and the code for each one, see the Amazon Polly
Developer Guide
(https://docs.aws.amazon.com/polly/latest/dg/what-is.html).


=head2 Tags => L<Paws::Pinpoint::MapOf__string>

  A string-to-string map of key-value pairs that defines the tags to
associate with the message template. Each tag consists of a required
tag key and an associated tag value.


=head2 TemplateDescription => Str

  A custom description of the message template.


=head2 VoiceId => Str

  The name of the voice to use when delivering messages that are based on
the message template. For a list of supported voices, see the Amazon
Polly Developer Guide
(https://docs.aws.amazon.com/polly/latest/dg/what-is.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

