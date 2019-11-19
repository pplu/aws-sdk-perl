# Generated from default/map_enum.tt
package Paws::IAM::SummaryMapType;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');
  use Types::Standard qw/Int/;
  use Paws::IAM::Types qw//;
  has AccessKeysPerUserQuota => (is => 'ro', isa => Int);
  has AccountAccessKeysPresent => (is => 'ro', isa => Int);
  has AccountMFAEnabled => (is => 'ro', isa => Int);
  has AccountSigningCertificatesPresent => (is => 'ro', isa => Int);
  has AttachedPoliciesPerGroupQuota => (is => 'ro', isa => Int);
  has AttachedPoliciesPerRoleQuota => (is => 'ro', isa => Int);
  has AttachedPoliciesPerUserQuota => (is => 'ro', isa => Int);
  has GlobalEndpointTokenVersion => (is => 'ro', isa => Int);
  has GroupPolicySizeQuota => (is => 'ro', isa => Int);
  has Groups => (is => 'ro', isa => Int);
  has GroupsPerUserQuota => (is => 'ro', isa => Int);
  has GroupsQuota => (is => 'ro', isa => Int);
  has MFADevices => (is => 'ro', isa => Int);
  has MFADevicesInUse => (is => 'ro', isa => Int);
  has Policies => (is => 'ro', isa => Int);
  has PoliciesQuota => (is => 'ro', isa => Int);
  has PolicySizeQuota => (is => 'ro', isa => Int);
  has PolicyVersionsInUse => (is => 'ro', isa => Int);
  has PolicyVersionsInUseQuota => (is => 'ro', isa => Int);
  has ServerCertificates => (is => 'ro', isa => Int);
  has ServerCertificatesQuota => (is => 'ro', isa => Int);
  has SigningCertificatesPerUserQuota => (is => 'ro', isa => Int);
  has UserPolicySizeQuota => (is => 'ro', isa => Int);
  has Users => (is => 'ro', isa => Int);
  has UsersQuota => (is => 'ro', isa => Int);
  has VersionsPerPolicyQuota => (is => 'ro', isa => Int);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'AccessKeysPerUserQuota' => {
                                          type => 'Int',                                        },
                               'AccountAccessKeysPresent' => {
                                          type => 'Int',                                        },
                               'AccountMFAEnabled' => {
                                          type => 'Int',                                        },
                               'AccountSigningCertificatesPresent' => {
                                          type => 'Int',                                        },
                               'AttachedPoliciesPerGroupQuota' => {
                                          type => 'Int',                                        },
                               'AttachedPoliciesPerRoleQuota' => {
                                          type => 'Int',                                        },
                               'AttachedPoliciesPerUserQuota' => {
                                          type => 'Int',                                        },
                               'GlobalEndpointTokenVersion' => {
                                          type => 'Int',                                        },
                               'GroupPolicySizeQuota' => {
                                          type => 'Int',                                        },
                               'Groups' => {
                                          type => 'Int',                                        },
                               'GroupsPerUserQuota' => {
                                          type => 'Int',                                        },
                               'GroupsQuota' => {
                                          type => 'Int',                                        },
                               'MFADevices' => {
                                          type => 'Int',                                        },
                               'MFADevicesInUse' => {
                                          type => 'Int',                                        },
                               'Policies' => {
                                          type => 'Int',                                        },
                               'PoliciesQuota' => {
                                          type => 'Int',                                        },
                               'PolicySizeQuota' => {
                                          type => 'Int',                                        },
                               'PolicyVersionsInUse' => {
                                          type => 'Int',                                        },
                               'PolicyVersionsInUseQuota' => {
                                          type => 'Int',                                        },
                               'ServerCertificates' => {
                                          type => 'Int',                                        },
                               'ServerCertificatesQuota' => {
                                          type => 'Int',                                        },
                               'SigningCertificatesPerUserQuota' => {
                                          type => 'Int',                                        },
                               'UserPolicySizeQuota' => {
                                          type => 'Int',                                        },
                               'Users' => {
                                          type => 'Int',                                        },
                               'UsersQuota' => {
                                          type => 'Int',                                        },
                               'VersionsPerPolicyQuota' => {
                                          type => 'Int',                                        },
                             },
                  };
    return $Params_map;
  }

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


=head2 AccessKeysPerUserQuota => 


=head2 AccountAccessKeysPresent => 


=head2 AccountMFAEnabled => 


=head2 AccountSigningCertificatesPresent => 


=head2 AttachedPoliciesPerGroupQuota => 


=head2 AttachedPoliciesPerRoleQuota => 


=head2 AttachedPoliciesPerUserQuota => 


=head2 GlobalEndpointTokenVersion => 


=head2 GroupPolicySizeQuota => 


=head2 Groups => 


=head2 GroupsPerUserQuota => 


=head2 GroupsQuota => 


=head2 MFADevices => 


=head2 MFADevicesInUse => 


=head2 Policies => 


=head2 PoliciesQuota => 


=head2 PolicySizeQuota => 


=head2 PolicyVersionsInUse => 


=head2 PolicyVersionsInUseQuota => 


=head2 ServerCertificates => 


=head2 ServerCertificatesQuota => 


=head2 SigningCertificatesPerUserQuota => 


=head2 UserPolicySizeQuota => 


=head2 Users => 


=head2 UsersQuota => 


=head2 VersionsPerPolicyQuota => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

