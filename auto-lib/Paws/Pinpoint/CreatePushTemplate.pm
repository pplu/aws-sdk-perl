
package Paws::Pinpoint::CreatePushTemplate;
  use Moose;
  has PushNotificationTemplateRequest => (is => 'ro', isa => 'Paws::Pinpoint::PushNotificationTemplateRequest', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'template-name', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'PushNotificationTemplateRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePushTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/templates/{template-name}/push');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::CreatePushTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreatePushTemplate - Arguments for method CreatePushTemplate on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePushTemplate on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method CreatePushTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePushTemplate.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $CreatePushTemplateResponse = $pinpoint->CreatePushTemplate(
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
        Tags => {
          'My__string' => 'My__string',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
        TemplateDescription => 'My__string',    # OPTIONAL
      },
      TemplateName => 'My__string',

    );

    # Results:
    my $CreateTemplateMessageBody =
      $CreatePushTemplateResponse->CreateTemplateMessageBody;

    # Returns a L<Paws::Pinpoint::CreatePushTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/CreatePushTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PushNotificationTemplateRequest => L<Paws::Pinpoint::PushNotificationTemplateRequest>





=head2 B<REQUIRED> TemplateName => Str

The name of the message template. A template name must start with an
alphanumeric character and can contain a maximum of 128 characters. The
characters can be alphanumeric characters, underscores (_), or hyphens
(-). Template names are case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePushTemplate in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

