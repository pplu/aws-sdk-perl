
package Paws::IoT::CreateProvisioningTemplateVersionResponse;
  use Moose;
  has IsDefaultVersion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isDefaultVersion');
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateArn');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName');
  has VersionId => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'versionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateProvisioningTemplateVersionResponse

=head1 ATTRIBUTES


=head2 IsDefaultVersion => Bool

True if the fleet provisioning template version is the default version,
otherwise false.


=head2 TemplateArn => Str

The ARN that identifies the provisioning template.


=head2 TemplateName => Str

The name of the fleet provisioning template.


=head2 VersionId => Int

The version of the fleet provisioning template.


=head2 _request_id => Str


=cut

