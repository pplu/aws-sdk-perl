
package Paws::Pinpoint::UpdatePushTemplate;
  use Moose;
  has CreateNewVersion => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'create-new-version');
  has PushNotificationTemplateRequest => (is => 'ro', isa => 'Paws::Pinpoint::PushNotificationTemplateRequest', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'template-name', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'PushNotificationTemplateRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePushTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/templates/{template-name}/push');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdatePushTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdatePushTemplate - Arguments for method UpdatePushTemplate on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePushTemplate on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdatePushTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePushTemplate.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdatePushTemplateResponse = $pinpoint->UpdatePushTemplate(
      PushNotificationTemplateRequest => {
        ADM => {
          Action => 'OPEN_APP',     # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
          Body   => 'My__string',   # OPTIONAL
          ImageIconUrl      => 'My__string',    # OPTIONAL
          ImageUrl          => 'My__string',    # OPTIONAL
          RawContent        => 'My__string',    # OPTIONAL
          SmallImageIconUrl => 'My__string',    # OPTIONAL
          Sound             => 'My__string',    # OPTIONAL
          Title             => 'My__string',    # OPTIONAL
          Url               => 'My__string',    # OPTIONAL
        },    # OPTIONAL
        APNS => {
          Action   => 'OPEN_APP',   # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
          Body     => 'My__string', # OPTIONAL
          MediaUrl => 'My__string', # OPTIONAL
          RawContent => 'My__string',    # OPTIONAL
          Sound      => 'My__string',    # OPTIONAL
          Title      => 'My__string',    # OPTIONAL
          Url        => 'My__string',    # OPTIONAL
        },    # OPTIONAL
        Baidu => {
          Action => 'OPEN_APP',     # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
          Body   => 'My__string',   # OPTIONAL
          ImageIconUrl      => 'My__string',    # OPTIONAL
          ImageUrl          => 'My__string',    # OPTIONAL
          RawContent        => 'My__string',    # OPTIONAL
          SmallImageIconUrl => 'My__string',    # OPTIONAL
          Sound             => 'My__string',    # OPTIONAL
          Title             => 'My__string',    # OPTIONAL
          Url               => 'My__string',    # OPTIONAL
        },    # OPTIONAL
        Default => {
          Action => 'OPEN_APP',     # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
          Body   => 'My__string',   # OPTIONAL
          Sound  => 'My__string',   # OPTIONAL
          Title  => 'My__string',   # OPTIONAL
          Url    => 'My__string',   # OPTIONAL
        },    # OPTIONAL
        DefaultSubstitutions => 'My__string',    # OPTIONAL
        GCM                  => {
          Action => 'OPEN_APP',     # values: OPEN_APP, DEEP_LINK, URL; OPTIONAL
          Body   => 'My__string',   # OPTIONAL
          ImageIconUrl      => 'My__string',    # OPTIONAL
          ImageUrl          => 'My__string',    # OPTIONAL
          RawContent        => 'My__string',    # OPTIONAL
          SmallImageIconUrl => 'My__string',    # OPTIONAL
          Sound             => 'My__string',    # OPTIONAL
          Title             => 'My__string',    # OPTIONAL
          Url               => 'My__string',    # OPTIONAL
        },    # OPTIONAL
        RecommenderId => 'My__string',    # OPTIONAL
        Tags          => {
          'My__string' => 'My__string',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
        TemplateDescription => 'My__string',    # OPTIONAL
      },
      TemplateName     => 'My__string',
      CreateNewVersion => 1,                    # OPTIONAL
      Version          => 'My__string',         # OPTIONAL
    );

    # Results:
    my $MessageBody = $UpdatePushTemplateResponse->MessageBody;

    # Returns a L<Paws::Pinpoint::UpdatePushTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdatePushTemplate>

=head1 ATTRIBUTES


=head2 CreateNewVersion => Bool

Specifies whether to save the updates as a new version of the message
template. Valid values are: true, save the updates as a new version;
and, false, save the updates to (overwrite) the latest existing version
of the template.

If you don't specify a value for this parameter, Amazon Pinpoint saves
the updates to (overwrites) the latest existing version of the
template. If you specify a value of true for this parameter, don't
specify a value for the version parameter. Otherwise, an error will
occur.



=head2 B<REQUIRED> PushNotificationTemplateRequest => L<Paws::Pinpoint::PushNotificationTemplateRequest>





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

If specified, this value must match the identifier for an existing
template version. If specified for an update operation, this value must
match the identifier for the latest existing version of the template.
This restriction helps ensure that race conditions don't occur.

If you don't specify a value for this parameter, Amazon Pinpoint does
the following:

=over

=item *

For a get operation, retrieves information about the active version of
the template.

=item *

For an update operation, saves the updates to (overwrites) the latest
existing version of the template, if the create-new-version parameter
isn't used or is set to false.

=item *

For a delete operation, deletes the template, including all versions of
the template.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePushTemplate in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

