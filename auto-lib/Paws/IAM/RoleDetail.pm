# Generated from default/object.tt
package Paws::IAM::RoleDetail;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::IAM::Types qw/IAM_InstanceProfile IAM_AttachedPolicy IAM_Tag IAM_PolicyDetail IAM_AttachedPermissionsBoundary/;
  has Arn => (is => 'ro', isa => Str);
  has AssumeRolePolicyDocument => (is => 'ro', isa => Str);
  has Policy => ( is => 'lazy', builder => sub { my $self = shift;  return decode_json(URL::Encode::url_decode($self->AssumeRolePolicyDocument)); });
  has AttachedManagedPolicies => (is => 'ro', isa => ArrayRef[IAM_AttachedPolicy]);
  has CreateDate => (is => 'ro', isa => Str);
  has InstanceProfileList => (is => 'ro', isa => ArrayRef[IAM_InstanceProfile]);
  has Path => (is => 'ro', isa => Str);
  has PermissionsBoundary => (is => 'ro', isa => IAM_AttachedPermissionsBoundary);
  has RoleId => (is => 'ro', isa => Str);
  has RoleName => (is => 'ro', isa => Str);
  has RolePolicyList => (is => 'ro', isa => ArrayRef[IAM_PolicyDetail]);
  has Tags => (is => 'ro', isa => ArrayRef[IAM_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreateDate' => {
                                 'type' => 'Str'
                               },
               'RoleId' => {
                             'type' => 'Str'
                           },
               'PermissionsBoundary' => {
                                          'class' => 'Paws::IAM::AttachedPermissionsBoundary',
                                          'type' => 'IAM_AttachedPermissionsBoundary'
                                        },
               'AttachedManagedPolicies' => {
                                              'class' => 'Paws::IAM::AttachedPolicy',
                                              'type' => 'ArrayRef[IAM_AttachedPolicy]'
                                            },
               'AssumeRolePolicyDocument' => {
                                               'type' => 'Str'
                                             },
               'RolePolicyList' => {
                                     'class' => 'Paws::IAM::PolicyDetail',
                                     'type' => 'ArrayRef[IAM_PolicyDetail]'
                                   },
               'Arn' => {
                          'type' => 'Str'
                        },
               'InstanceProfileList' => {
                                          'class' => 'Paws::IAM::InstanceProfile',
                                          'type' => 'ArrayRef[IAM_InstanceProfile]'
                                        },
               'Path' => {
                           'type' => 'Str'
                         },
               'Tags' => {
                           'class' => 'Paws::IAM::Tag',
                           'type' => 'ArrayRef[IAM_Tag]'
                         },
               'RoleName' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::RoleDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::RoleDetail object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::RoleDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an IAM role, including all of the role's
policies.

This data type is used as a response element in the
GetAccountAuthorizationDetails operation.

=head1 ATTRIBUTES


=head2 Arn => Str

  


=head2 AssumeRolePolicyDocument => Str

  The trust policy that grants permission to assume the role.


=head2 AttachedManagedPolicies => ArrayRef[IAM_AttachedPolicy]

  A list of managed policies attached to the role. These policies are the
role's access (permissions) policies.


=head2 CreateDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the role was created.


=head2 InstanceProfileList => ArrayRef[IAM_InstanceProfile]

  A list of instance profiles that contain this role.


=head2 Path => Str

  The path to the role. For more information about paths, see IAM
Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 PermissionsBoundary => IAM_AttachedPermissionsBoundary

  The ARN of the policy used to set the permissions boundary for the
role.

For more information about permissions boundaries, see Permissions
Boundaries for IAM Identities
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)
in the I<IAM User Guide>.


=head2 RoleId => Str

  The stable and unique string identifying the role. For more information
about IDs, see IAM Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 RoleName => Str

  The friendly name that identifies the role.


=head2 RolePolicyList => ArrayRef[IAM_PolicyDetail]

  A list of inline policies embedded in the role. These policies are the
role's access (permissions) policies.


=head2 Tags => ArrayRef[IAM_Tag]

  A list of tags that are attached to the specified role. For more
information about tagging, see Tagging IAM Identities
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

