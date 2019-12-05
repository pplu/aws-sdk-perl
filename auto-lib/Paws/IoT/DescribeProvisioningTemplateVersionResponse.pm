
package Paws::IoT::DescribeProvisioningTemplateVersionResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has IsDefaultVersion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isDefaultVersion');
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateBody');
  has VersionId => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'versionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeProvisioningTemplateVersionResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The date when the fleet provisioning template version was created.


=head2 IsDefaultVersion => Bool

True if the fleet provisioning template version is the default version.


=head2 TemplateBody => Str

The JSON formatted contents of the fleet provisioning template version.


=head2 VersionId => Int

The fleet provisioning template version ID.


=head2 _request_id => Str


=cut

