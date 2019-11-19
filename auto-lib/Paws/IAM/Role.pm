# Generated from default/object.tt
package Paws::IAM::Role;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;

  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::IAM::Types qw/IAM_AttachedPermissionsBoundary IAM_RoleLastUsed IAM_Tag/;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has AssumeRolePolicyDocument => (is => 'ro', isa => Str);
  has Policy => ( is => 'lazy', builder => sub { my $self = shift;  return decode_json(URL::Encode::url_decode($self->AssumeRolePolicyDocument)); });
  has CreateDate => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str);
  has MaxSessionDuration => (is => 'ro', isa => Int);
  has Path => (is => 'ro', isa => Str, required => 1);
  has PermissionsBoundary => (is => 'ro', isa => IAM_AttachedPermissionsBoundary);
  has RoleId => (is => 'ro', isa => Str, required => 1);
  has RoleLastUsed => (is => 'ro', isa => IAM_RoleLastUsed);
  has RoleName => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => ArrayRef[IAM_Tag]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxSessionDuration' => {
                                         'type' => 'Int'
                                       },
               'RoleLastUsed' => {
                                   'class' => 'Paws::IAM::RoleLastUsed',
                                   'type' => 'IAM_RoleLastUsed'
                                 },
               'Description' => {
                                  'type' => 'Str'
                                },
               'RoleId' => {
                             'type' => 'Str'
                           },
               'RoleName' => {
                               'type' => 'Str'
                             },
               'CreateDate' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'class' => 'Paws::IAM::Tag',
                           'type' => 'ArrayRef[IAM_Tag]'
                         },
               'AssumeRolePolicyDocument' => {
                                               'type' => 'Str'
                                             },
               'Path' => {
                           'type' => 'Str'
                         },
               'Arn' => {
                          'type' => 'Str'
                        },
               'PermissionsBoundary' => {
                                          'type' => 'IAM_AttachedPermissionsBoundary',
                                          'class' => 'Paws::IAM::AttachedPermissionsBoundary'
                                        }
             },
  'IsRequired' => {
                    'Arn' => 1,
                    'RoleName' => 1,
                    'CreateDate' => 1,
                    'Path' => 1,
                    'RoleId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::Role

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::Role object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::Role object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an IAM role. This structure is returned as a
response element in several API operations that interact with roles.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) specifying the role. For more
information about ARNs and how to use them in policies, see IAM
Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<IAM User Guide> guide.


=head2 AssumeRolePolicyDocument => Str

  The policy that grants an entity permission to assume the role.


=head2 B<REQUIRED> CreateDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the role was created.


=head2 Description => Str

  A description of the role that you provide.


=head2 MaxSessionDuration => Int

  The maximum session duration (in seconds) for the specified role.
Anyone who uses the AWS CLI, or API to assume the role can specify the
duration using the optional C<DurationSeconds> API parameter or
C<duration-seconds> CLI parameter.


=head2 B<REQUIRED> Path => Str

  The path to the role. For more information about paths, see IAM
Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<IAM User Guide>.


=head2 PermissionsBoundary => IAM_AttachedPermissionsBoundary

  The ARN of the policy used to set the permissions boundary for the
role.

For more information about permissions boundaries, see Permissions
Boundaries for IAM Identities
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html)
in the I<IAM User Guide>.


=head2 B<REQUIRED> RoleId => Str

  The stable and unique string identifying the role. For more information
about IDs, see IAM Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<IAM User Guide>.


=head2 RoleLastUsed => IAM_RoleLastUsed

  Contains information about the last time that an IAM role was used.
This includes the date and time and the Region in which the role was
last used. Activity is only reported for the trailing 400 days. This
period can be shorter if your Region began supporting these features
within the last year. The role might have been used more than 400 days
ago. For more information, see Regions Where Data Is Tracked
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period)
in the I<IAM User Guide>.


=head2 B<REQUIRED> RoleName => Str

  The friendly name that identifies the role.


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

