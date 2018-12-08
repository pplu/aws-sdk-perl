package Paws::IAM::UserDetail;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AttachedManagedPolicies => (is => 'ro', isa => 'ArrayRef[Paws::IAM::AttachedPolicy]');
  has CreateDate => (is => 'ro', isa => 'Str');
  has GroupList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Path => (is => 'ro', isa => 'Str');
  has PermissionsBoundary => (is => 'ro', isa => 'Paws::IAM::AttachedPermissionsBoundary');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');
  has UserId => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
  has UserPolicyList => (is => 'ro', isa => 'ArrayRef[Paws::IAM::PolicyDetail]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UserDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::UserDetail object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserPolicyList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::UserDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an IAM user, including all the user's
policies and all the IAM groups the user is in.

This data type is used as a response element in the
GetAccountAuthorizationDetails operation.

=head1 ATTRIBUTES


=head2 Arn => Str

  


=head2 AttachedManagedPolicies => ArrayRef[L<Paws::IAM::AttachedPolicy>]

  A list of the managed policies attached to the user.


=head2 CreateDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the user was created.


=head2 GroupList => ArrayRef[Str|Undef]

  A list of IAM groups that the user is in.


=head2 Path => Str

  The path to the user. For more information about paths, see IAM
Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 PermissionsBoundary => L<Paws::IAM::AttachedPermissionsBoundary>

  The ARN of the policy used to set the permissions boundary for the
user.

For more information about permissions boundaries, see Permissions
Boundaries for IAM Identities in the I<IAM User Guide>.


=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

  A list of tags that are associated with the specified user. For more
information about tagging, see Tagging IAM Identities
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.


=head2 UserId => Str

  The stable and unique string identifying the user. For more information
about IDs, see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 UserName => Str

  The friendly name identifying the user.


=head2 UserPolicyList => ArrayRef[L<Paws::IAM::PolicyDetail>]

  A list of the inline policies embedded in the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

