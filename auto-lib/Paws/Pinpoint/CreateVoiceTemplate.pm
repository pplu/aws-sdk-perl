
package Paws::Pinpoint::CreateVoiceTemplate;
  use Moose;
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'template-name', required => 1);
  has VoiceTemplateRequest => (is => 'ro', isa => 'Paws::Pinpoint::VoiceTemplateRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VoiceTemplateRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVoiceTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/templates/{template-name}/voice');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::CreateVoiceTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateVoiceTemplate - Arguments for method CreateVoiceTemplate on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVoiceTemplate on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method CreateVoiceTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVoiceTemplate.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $CreateVoiceTemplateResponse = $pinpoint->CreateVoiceTemplate(
      TemplateName         => 'My__string',
      VoiceTemplateRequest => {
        Body                 => 'My__string',
        DefaultSubstitutions => 'My__string',
        LanguageCode         => 'My__string',
        Tags                 => { 'My__string' => 'My__string', },    # OPTIONAL
        TemplateDescription  => 'My__string',
        VoiceId              => 'My__string',
      },

    );

    # Results:
    my $CreateTemplateMessageBody =
      $CreateVoiceTemplateResponse->CreateTemplateMessageBody;

    # Returns a L<Paws::Pinpoint::CreateVoiceTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/CreateVoiceTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateName => Str

The name of the message template. A template name must start with an
alphanumeric character and can contain a maximum of 128 characters. The
characters can be alphanumeric characters, underscores (_), or hyphens
(-). Template names are case sensitive.



=head2 B<REQUIRED> VoiceTemplateRequest => L<Paws::Pinpoint::VoiceTemplateRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVoiceTemplate in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

