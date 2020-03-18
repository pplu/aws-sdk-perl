
package Paws::Pinpoint::CreateSmsTemplate;
  use Moose;
  has SMSTemplateRequest => (is => 'ro', isa => 'Paws::Pinpoint::SMSTemplateRequest', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'template-name', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'SMSTemplateRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSmsTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/templates/{template-name}/sms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::CreateSmsTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateSmsTemplate - Arguments for method CreateSmsTemplate on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSmsTemplate on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method CreateSmsTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSmsTemplate.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $CreateSmsTemplateResponse = $pinpoint->CreateSmsTemplate(
      SMSTemplateRequest => {
        Body                 => 'My__string',    # OPTIONAL
        DefaultSubstitutions => 'My__string',    # OPTIONAL
        Tags                 => {
          'My__string' => 'My__string',    # key: OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
        TemplateDescription => 'My__string',    # OPTIONAL
      },
      TemplateName => 'My__string',

    );

    # Results:
    my $CreateTemplateMessageBody =
      $CreateSmsTemplateResponse->CreateTemplateMessageBody;

    # Returns a L<Paws::Pinpoint::CreateSmsTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/CreateSmsTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SMSTemplateRequest => L<Paws::Pinpoint::SMSTemplateRequest>





=head2 B<REQUIRED> TemplateName => Str

The name of the message template. A template name must start with an
alphanumeric character and can contain a maximum of 128 characters. The
characters can be alphanumeric characters, underscores (_), or hyphens
(-). Template names are case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSmsTemplate in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

