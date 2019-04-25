
package Paws::SES::CreateTemplate;
  use Moose;
  has Template => (is => 'ro', isa => 'Paws::SES::Template', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::CreateTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::CreateTemplate - Arguments for method CreateTemplate on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTemplate on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method CreateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTemplate.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $CreateTemplateResponse = $email->CreateTemplate(
      Template => {
        TemplateName => 'MyTemplateName',
        HtmlPart     => 'MyHtmlPart',       # OPTIONAL
        SubjectPart  => 'MySubjectPart',    # OPTIONAL
        TextPart     => 'MyTextPart',       # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Template => L<Paws::SES::Template>

The content of the email, composed of a subject line, an HTML part, and
a text-only part.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTemplate in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

