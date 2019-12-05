
package Paws::IoT::DescribeProvisioningTemplate;
  use Moose;
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProvisioningTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioning-templates/{templateName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeProvisioningTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeProvisioningTemplate - Arguments for method DescribeProvisioningTemplate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProvisioningTemplate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeProvisioningTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProvisioningTemplate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeProvisioningTemplateResponse =
      $iot->DescribeProvisioningTemplate(
      TemplateName => 'MyTemplateName',

      );

    # Results:
    my $CreationDate = $DescribeProvisioningTemplateResponse->CreationDate;
    my $DefaultVersionId =
      $DescribeProvisioningTemplateResponse->DefaultVersionId;
    my $Description = $DescribeProvisioningTemplateResponse->Description;
    my $Enabled     = $DescribeProvisioningTemplateResponse->Enabled;
    my $LastModifiedDate =
      $DescribeProvisioningTemplateResponse->LastModifiedDate;
    my $ProvisioningRoleArn =
      $DescribeProvisioningTemplateResponse->ProvisioningRoleArn;
    my $TemplateArn  = $DescribeProvisioningTemplateResponse->TemplateArn;
    my $TemplateBody = $DescribeProvisioningTemplateResponse->TemplateBody;
    my $TemplateName = $DescribeProvisioningTemplateResponse->TemplateName;

    # Returns a L<Paws::IoT::DescribeProvisioningTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeProvisioningTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateName => Str

The name of the fleet provisioning template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProvisioningTemplate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

