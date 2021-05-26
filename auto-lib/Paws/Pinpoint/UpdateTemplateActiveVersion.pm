
package Paws::Pinpoint::UpdateTemplateActiveVersion;
  use Moose;
  has TemplateActiveVersionRequest => (is => 'ro', isa => 'Paws::Pinpoint::TemplateActiveVersionRequest', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'template-name', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'template-type', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'TemplateActiveVersionRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTemplateActiveVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/templates/{template-name}/{template-type}/active-version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateTemplateActiveVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateTemplateActiveVersion - Arguments for method UpdateTemplateActiveVersion on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTemplateActiveVersion on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateTemplateActiveVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTemplateActiveVersion.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateTemplateActiveVersionResponse =
      $pinpoint->UpdateTemplateActiveVersion(
      TemplateActiveVersionRequest => {
        Version => 'My__string',    # OPTIONAL
      },
      TemplateName => 'My__string',
      TemplateType => 'My__string',

      );

    # Results:
    my $MessageBody = $UpdateTemplateActiveVersionResponse->MessageBody;

    # Returns a L<Paws::Pinpoint::UpdateTemplateActiveVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateTemplateActiveVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateActiveVersionRequest => L<Paws::Pinpoint::TemplateActiveVersionRequest>





=head2 B<REQUIRED> TemplateName => Str

The name of the message template. A template name must start with an
alphanumeric character and can contain a maximum of 128 characters. The
characters can be alphanumeric characters, underscores (_), or hyphens
(-). Template names are case sensitive.



=head2 B<REQUIRED> TemplateType => Str

The type of channel that the message template is designed for. Valid
values are: EMAIL, PUSH, SMS, and VOICE.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTemplateActiveVersion in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

