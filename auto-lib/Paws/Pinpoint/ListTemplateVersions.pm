
package Paws::Pinpoint::ListTemplateVersions;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has PageSize => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'page-size');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'template-name', required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'template-type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTemplateVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/templates/{template-name}/{template-type}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::ListTemplateVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ListTemplateVersions - Arguments for method ListTemplateVersions on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTemplateVersions on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method ListTemplateVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTemplateVersions.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $ListTemplateVersionsResponse = $pinpoint->ListTemplateVersions(
      TemplateName => 'My__string',
      TemplateType => 'My__string',
      NextToken    => 'My__string',    # OPTIONAL
      PageSize     => 'My__string',    # OPTIONAL
    );

    # Results:
    my $TemplateVersionsResponse =
      $ListTemplateVersionsResponse->TemplateVersionsResponse;

    # Returns a L<Paws::Pinpoint::ListTemplateVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/ListTemplateVersions>

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that specifies which page of results to return in a
paginated response. This parameter is currently not supported for
application, campaign, and journey metrics.



=head2 PageSize => Str

The maximum number of items to include in each page of a paginated
response. This parameter is currently not supported for application,
campaign, and journey metrics.



=head2 B<REQUIRED> TemplateName => Str

The name of the message template. A template name must start with an
alphanumeric character and can contain a maximum of 128 characters. The
characters can be alphanumeric characters, underscores (_), or hyphens
(-). Template names are case sensitive.



=head2 B<REQUIRED> TemplateType => Str

The type of channel that the message template is designed for. Valid
values are: EMAIL, PUSH, SMS, and VOICE.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTemplateVersions in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

