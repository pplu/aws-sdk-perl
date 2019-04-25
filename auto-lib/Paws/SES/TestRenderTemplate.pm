
package Paws::SES::TestRenderTemplate;
  use Moose;
  has TemplateData => (is => 'ro', isa => 'Str', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestRenderTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::TestRenderTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'TestRenderTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::TestRenderTemplate - Arguments for method TestRenderTemplate on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestRenderTemplate on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method TestRenderTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestRenderTemplate.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $TestRenderTemplateResponse = $email->TestRenderTemplate(
      TemplateData => 'MyTemplateData',
      TemplateName => 'MyTemplateName',

    );

    # Results:
    my $RenderedTemplate = $TestRenderTemplateResponse->RenderedTemplate;

    # Returns a L<Paws::SES::TestRenderTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/TestRenderTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateData => Str

A list of replacement values to apply to the template. This parameter
is a JSON object, typically consisting of key-value pairs in which the
keys correspond to replacement tags in the email template.



=head2 B<REQUIRED> TemplateName => Str

The name of the template that you want to render.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestRenderTemplate in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

