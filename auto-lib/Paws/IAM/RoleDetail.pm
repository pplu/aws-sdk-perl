package Paws::IAM::RoleDetail;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str', decode_as => 'URLJSON', method => 'Policy', traits => ['JSONAttribute']);
  has AttachedManagedPolicies => (is => 'ro', isa => 'ArrayRef[Paws::IAM::AttachedPolicy]');
  has CreateDate => (is => 'ro', isa => 'Str');
  has InstanceProfileList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::InstanceProfile]');
  has Path => (is => 'ro', isa => 'Str');
  has RoleId => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str');
  has RolePolicyList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::PolicyDetail]');
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

  $service_obj->Method(Att1 => { Arn => $value, ..., RolePolicyList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::RoleDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an IAM role, including all of the role's
policies.

This data type is used as a response element in the
GetAccountAuthorizationDetails action.

=head1 ATTRIBUTES


=head2 Arn => Str

  


=head2 AssumeRolePolicyDocument => Str

  The trust policy that grants permission to assume the role.


=head2 AttachedManagedPolicies => ArrayRef[L<Paws::IAM::AttachedPolicy>]

  A list of managed policies attached to the role. These policies are the
role's access (permissions) policies.


=head2 CreateDate => Str

  The date and time, in ISO 8601 date-time format, when the role was
created.


=head2 InstanceProfileList => ArrayRef[L<Paws::IAM::InstanceProfile>]

  


=head2 Path => Str

  The path to the role. For more information about paths, see IAM
Identifiers in the I<Using IAM> guide.


=head2 RoleId => Str

  The stable and unique string identifying the role. For more information
about IDs, see IAM Identifiers in the I<Using IAM> guide.


=head2 RoleName => Str

  The friendly name that identifies the role.


=head2 RolePolicyList => ArrayRef[L<Paws::IAM::PolicyDetail>]

  A list of inline policies embedded in the role. These policies are the
role's access (permissions) policies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

