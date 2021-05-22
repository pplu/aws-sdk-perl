
package Paws::SESv2::UpdateEmailTemplate;
  use Moose;
  has TemplateContent => (is => 'ro', isa => 'Paws::SESv2::EmailTemplateContent', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TemplateName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEmailTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/templates/{TemplateName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::UpdateEmailTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::UpdateEmailTemplate - Arguments for method UpdateEmailTemplate on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEmailTemplate on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method UpdateEmailTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEmailTemplate.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $UpdateEmailTemplateResponse = $email->UpdateEmailTemplate(
      TemplateContent => {
        Html    => 'MyEmailTemplateHtml',       # OPTIONAL
        Subject => 'MyEmailTemplateSubject',    # OPTIONAL
        Text    => 'MyEmailTemplateText',       # OPTIONAL
      },
      TemplateName => 'MyEmailTemplateName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/UpdateEmailTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateContent => L<Paws::SESv2::EmailTemplateContent>

The content of the email template, composed of a subject line, an HTML
part, and a text-only part.



=head2 B<REQUIRED> TemplateName => Str

The name of the template you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEmailTemplate in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

