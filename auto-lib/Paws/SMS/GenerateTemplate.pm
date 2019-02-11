
package Paws::SMS::GenerateTemplate;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId' );
  has TemplateFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateFormat' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::GenerateTemplateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GenerateTemplate - Arguments for method GenerateTemplate on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateTemplate on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method GenerateTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateTemplate.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $GenerateTemplateResponse = $sms->GenerateTemplate(
      AppId          => 'MyAppId',    # OPTIONAL
      TemplateFormat => 'JSON',       # OPTIONAL
    );

    # Results:
    my $S3Location = $GenerateTemplateResponse->S3Location;

    # Returns a L<Paws::SMS::GenerateTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/GenerateTemplate>

=head1 ATTRIBUTES


=head2 AppId => Str

ID of the application associated with the Amazon CloudFormation
template.



=head2 TemplateFormat => Str

Format for generating the Amazon CloudFormation template.

Valid values are: C<"JSON">, C<"YAML">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateTemplate in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

