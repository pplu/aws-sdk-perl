
package Paws::SES::GetTemplate;
  use Moose;
  has TemplateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::GetTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetTemplate - Arguments for method GetTemplate on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemplate on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method GetTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTemplate.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $GetTemplateResponse = $email->GetTemplate(
      TemplateName => 'MyTemplateName',

    );

    # Results:
    my $Template = $GetTemplateResponse->Template;

    # Returns a L<Paws::SES::GetTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateName => Str

The name of the template you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemplate in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

