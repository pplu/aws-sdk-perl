
package Paws::IoT::ListProvisioningTemplateVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProvisioningTemplateVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioning-templates/{templateName}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListProvisioningTemplateVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListProvisioningTemplateVersions - Arguments for method ListProvisioningTemplateVersions on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProvisioningTemplateVersions on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListProvisioningTemplateVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProvisioningTemplateVersions.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListProvisioningTemplateVersionsResponse =
      $iot->ListProvisioningTemplateVersions(
      TemplateName => 'MyTemplateName',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyNextToken',      # OPTIONAL
      );

    # Results:
    my $NextToken = $ListProvisioningTemplateVersionsResponse->NextToken;
    my $Versions  = $ListProvisioningTemplateVersionsResponse->Versions;

    # Returns a L<Paws::IoT::ListProvisioningTemplateVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListProvisioningTemplateVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

A token to retrieve the next set of results.



=head2 B<REQUIRED> TemplateName => Str

The name of the fleet provisioning template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProvisioningTemplateVersions in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

