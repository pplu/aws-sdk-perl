
package Paws::IoT::CreateProvisioningTemplateResponse;
  use Moose;
  has DefaultVersionId => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'defaultVersionId');
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateArn');
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateProvisioningTemplateResponse

=head1 ATTRIBUTES


=head2 DefaultVersionId => Int

The default version of the fleet provisioning template.


=head2 TemplateArn => Str

The ARN that identifies the provisioning template.


=head2 TemplateName => Str

The name of the fleet provisioning template.


=head2 _request_id => Str


=cut

