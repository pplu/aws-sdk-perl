
package Paws::Pinpoint::UpdateVoiceTemplate;
  use Moose;
  has CreateNewVersion => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'create-new-version');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'template-name', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version');
  has VoiceTemplateRequest => (is => 'ro', isa => 'Paws::Pinpoint::VoiceTemplateRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VoiceTemplateRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVoiceTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/templates/{template-name}/voice');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateVoiceTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateVoiceTemplate - Arguments for method UpdateVoiceTemplate on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVoiceTemplate on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateVoiceTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVoiceTemplate.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateVoiceTemplateResponse = $pinpoint->UpdateVoiceTemplate(
      TemplateName         => 'My__string',
      VoiceTemplateRequest => {
        Body                 => 'My__string',
        DefaultSubstitutions => 'My__string',
        LanguageCode         => 'My__string',
        Tags                 => { 'My__string' => 'My__string', },    # OPTIONAL
        TemplateDescription  => 'My__string',
        VoiceId              => 'My__string',
      },
      CreateNewVersion => 1,                                          # OPTIONAL
      Version          => 'My__string',                               # OPTIONAL
    );

    # Results:
    my $MessageBody = $UpdateVoiceTemplateResponse->MessageBody;

    # Returns a L<Paws::Pinpoint::UpdateVoiceTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateVoiceTemplate>

=head1 ATTRIBUTES


=head2 CreateNewVersion => Bool

Specifies whether to save the updates as a new version of the message
template. Valid values are: true, save the updates as a new version;
and, false, save the updates to the latest existing version of the
template.

If you don't specify a value for this parameter, Amazon Pinpoint saves
the updates to the latest existing version of the template. If you
specify a value of true for this parameter, don't specify a value for
the version parameter. Otherwise, an error will occur.



=head2 B<REQUIRED> TemplateName => Str

The name of the message template. A template name must start with an
alphanumeric character and can contain a maximum of 128 characters. The
characters can be alphanumeric characters, underscores (_), or hyphens
(-). Template names are case sensitive.



=head2 Version => Str

The unique identifier for the version of the message template to
update, retrieve information about, or delete. To retrieve identifiers
and other information for all the versions of a template, use the

Template Versions resource.

If specified, this value must match the identifier of an existing
template version. If specified for an update operation, this value must
match the identifier of the latest existing version of the template.
This restriction helps ensure that race conditions don't occur.

If you don't specify a value for this parameter, Amazon Pinpoint does
the following:

=over

=item *

For a get operation, retrieves information about the active version of
the template.

=item *

For an update operation, saves the updates to the latest existing
version of the template, if the create-new-version parameter isn't used
or is set to false.

=item *

For a delete operation, deletes the template, including all versions of
the template.

=back




=head2 B<REQUIRED> VoiceTemplateRequest => L<Paws::Pinpoint::VoiceTemplateRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVoiceTemplate in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

