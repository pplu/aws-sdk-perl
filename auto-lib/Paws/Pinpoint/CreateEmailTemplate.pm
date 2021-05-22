
package Paws::Pinpoint::CreateEmailTemplate;
  use Moose;
  has EmailTemplateRequest => (is => 'ro', isa => 'Paws::Pinpoint::EmailTemplateRequest', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'template-name', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EmailTemplateRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEmailTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/templates/{template-name}/email');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::CreateEmailTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateEmailTemplate - Arguments for method CreateEmailTemplate on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEmailTemplate on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method CreateEmailTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEmailTemplate.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $CreateEmailTemplateResponse = $pinpoint->CreateEmailTemplate(
      EmailTemplateRequest => {
        DefaultSubstitutions => 'My__string',    # OPTIONAL
        HtmlPart             => 'My__string',    # OPTIONAL
        RecommenderId        => 'My__string',    # OPTIONAL
        Subject              => 'My__string',    # OPTIONAL
        Tags                 => {
          'My__string' => 'My__string',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
        TemplateDescription => 'My__string',    # OPTIONAL
        TextPart            => 'My__string',    # OPTIONAL
      },
      TemplateName => 'My__string',

    );

    # Results:
    my $CreateTemplateMessageBody =
      $CreateEmailTemplateResponse->CreateTemplateMessageBody;

    # Returns a L<Paws::Pinpoint::CreateEmailTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/CreateEmailTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmailTemplateRequest => L<Paws::Pinpoint::EmailTemplateRequest>





=head2 B<REQUIRED> TemplateName => Str

The name of the message template. A template name must start with an
alphanumeric character and can contain a maximum of 128 characters. The
characters can be alphanumeric characters, underscores (_), or hyphens
(-). Template names are case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEmailTemplate in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

