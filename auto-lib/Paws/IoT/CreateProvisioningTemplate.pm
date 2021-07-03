
package Paws::IoT::CreateProvisioningTemplate;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Enabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enabled');
  has ProvisioningRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisioningRoleArn', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody', required => 1);
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProvisioningTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/provisioning-templates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateProvisioningTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateProvisioningTemplate - Arguments for method CreateProvisioningTemplate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProvisioningTemplate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateProvisioningTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProvisioningTemplate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateProvisioningTemplateResponse = $iot->CreateProvisioningTemplate(
      ProvisioningRoleArn => 'MyRoleArn',
      TemplateBody        => 'MyTemplateBody',
      TemplateName        => 'MyTemplateName',
      Description         => 'MyTemplateDescription',    # OPTIONAL
      Enabled             => 1,                          # OPTIONAL
      Tags                => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DefaultVersionId =
      $CreateProvisioningTemplateResponse->DefaultVersionId;
    my $TemplateArn  = $CreateProvisioningTemplateResponse->TemplateArn;
    my $TemplateName = $CreateProvisioningTemplateResponse->TemplateName;

    # Returns a L<Paws::IoT::CreateProvisioningTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateProvisioningTemplate>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the fleet provisioning template.



=head2 Enabled => Bool

True to enable the fleet provisioning template, otherwise false.



=head2 B<REQUIRED> ProvisioningRoleArn => Str

The role ARN for the role associated with the fleet provisioning
template. This IoT role grants permission to provision a device.



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage the fleet provisioning template.

For URI Request parameters use format: ...key1=value1&key2=value2...

For the CLI command-line parameter use format: &&tags
"key1=value1&key2=value2..."

For the cli-input-json file use format: "tags":
"key1=value1&key2=value2..."



=head2 B<REQUIRED> TemplateBody => Str

The JSON formatted contents of the fleet provisioning template.



=head2 B<REQUIRED> TemplateName => Str

The name of the fleet provisioning template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProvisioningTemplate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

