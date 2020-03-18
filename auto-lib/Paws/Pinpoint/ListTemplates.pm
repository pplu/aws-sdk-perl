
package Paws::Pinpoint::ListTemplates;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has PageSize => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'page-size');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'prefix');
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'template-type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTemplates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/templates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::ListTemplatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ListTemplates - Arguments for method ListTemplates on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTemplates on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method ListTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTemplates.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $ListTemplatesResponse = $pinpoint->ListTemplates(
      NextToken    => 'My__string',    # OPTIONAL
      PageSize     => 'My__string',    # OPTIONAL
      Prefix       => 'My__string',    # OPTIONAL
      TemplateType => 'My__string',    # OPTIONAL
    );

    # Results:
    my $TemplatesResponse = $ListTemplatesResponse->TemplatesResponse;

    # Returns a L<Paws::Pinpoint::ListTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/ListTemplates>

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that specifies which page of results to return in a
paginated response. This parameter is currently not supported for
application, campaign, and journey metrics.



=head2 PageSize => Str

The maximum number of items to include in each page of a paginated
response. This parameter is currently not supported for application,
campaign, and journey metrics.



=head2 Prefix => Str

The substring to match in the names of the message templates to include
in the results. If you specify this value, Amazon Pinpoint returns only
those templates whose names begin with the value that you specify.



=head2 TemplateType => Str

The type of message template to include in the results. Valid values
are: EMAIL, PUSH, SMS, and VOICE. To include all types of templates in
the results, don't include this parameter in your request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTemplates in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

