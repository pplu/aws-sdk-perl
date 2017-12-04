package Paws::IAM::SummaryMapType;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has AccessKeysPerUserQuota => (is => 'ro', isa => 'Int');
  has AccountAccessKeysPresent => (is => 'ro', isa => 'Int');
  has AccountMFAEnabled => (is => 'ro', isa => 'Int');
  has AccountSigningCertificatesPresent => (is => 'ro', isa => 'Int');
  has AttachedPoliciesPerGroupQuota => (is => 'ro', isa => 'Int');
  has AttachedPoliciesPerRoleQuota => (is => 'ro', isa => 'Int');
  has AttachedPoliciesPerUserQuota => (is => 'ro', isa => 'Int');
  has GroupPolicySizeQuota => (is => 'ro', isa => 'Int');
  has Groups => (is => 'ro', isa => 'Int');
  has GroupsPerUserQuota => (is => 'ro', isa => 'Int');
  has GroupsQuota => (is => 'ro', isa => 'Int');
  has MFADevices => (is => 'ro', isa => 'Int');
  has MFADevicesInUse => (is => 'ro', isa => 'Int');
  has Policies => (is => 'ro', isa => 'Int');
  has PoliciesQuota => (is => 'ro', isa => 'Int');
  has PolicySizeQuota => (is => 'ro', isa => 'Int');
  has PolicyVersionsInUse => (is => 'ro', isa => 'Int');
  has PolicyVersionsInUseQuota => (is => 'ro', isa => 'Int');
  has ServerCertificates => (is => 'ro', isa => 'Int');
  has ServerCertificatesQuota => (is => 'ro', isa => 'Int');
  has SigningCertificatesPerUserQuota => (is => 'ro', isa => 'Int');
  has UserPolicySizeQuota => (is => 'ro', isa => 'Int');
  has Users => (is => 'ro', isa => 'Int');
  has UsersQuota => (is => 'ro', isa => 'Int');
  has VersionsPerPolicyQuota => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::SummaryMapType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::SummaryMapType object:

  $service_obj->Method(Att1 => { AccessKeysPerUserQuota => $value, ..., VersionsPerPolicyQuota => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::SummaryMapType object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeysPerUserQuota

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AccessKeysPerUserQuota => Int


=head2 AccountAccessKeysPresent => Int


=head2 AccountMFAEnabled => Int


=head2 AccountSigningCertificatesPresent => Int


=head2 AttachedPoliciesPerGroupQuota => Int


=head2 AttachedPoliciesPerRoleQuota => Int


=head2 AttachedPoliciesPerUserQuota => Int


=head2 GroupPolicySizeQuota => Int


=head2 Groups => Int


=head2 GroupsPerUserQuota => Int


=head2 GroupsQuota => Int


=head2 MFADevices => Int


=head2 MFADevicesInUse => Int


=head2 Policies => Int


=head2 PoliciesQuota => Int


=head2 PolicySizeQuota => Int


=head2 PolicyVersionsInUse => Int


=head2 PolicyVersionsInUseQuota => Int


=head2 ServerCertificates => Int


=head2 ServerCertificatesQuota => Int


=head2 SigningCertificatesPerUserQuota => Int


=head2 UserPolicySizeQuota => Int


=head2 Users => Int


=head2 UsersQuota => Int


=head2 VersionsPerPolicyQuota => Int



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

