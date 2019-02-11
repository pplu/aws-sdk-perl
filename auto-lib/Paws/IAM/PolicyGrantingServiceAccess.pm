package Paws::IAM::PolicyGrantingServiceAccess;
  use Moose;
  has EntityName => (is => 'ro', isa => 'Str');
  has EntityType => (is => 'ro', isa => 'Str');
  has PolicyArn => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::PolicyGrantingServiceAccess

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::PolicyGrantingServiceAccess object:

  $service_obj->Method(Att1 => { EntityName => $value, ..., PolicyType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::PolicyGrantingServiceAccess object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityName

=head1 DESCRIPTION

Contains details about the permissions policies that are attached to
the specified identity (user, group, or role).

This data type is an element of the
ListPoliciesGrantingServiceAccessEntry object.

=head1 ATTRIBUTES


=head2 EntityName => Str

  The name of the entity (user or role) to which the inline policy is
attached.

This field is null for managed policies. For more information about
these policy types, see Managed Policies and Inline Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the I<IAM User Guide>.


=head2 EntityType => Str

  The type of entity (user or role) that used the policy to access the
service to which the inline policy is attached.

This field is null for managed policies. For more information about
these policy types, see Managed Policies and Inline Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the I<IAM User Guide>.


=head2 PolicyArn => Str

  


=head2 B<REQUIRED> PolicyName => Str

  The policy name.


=head2 B<REQUIRED> PolicyType => Str

  The policy type. For more information about these policy types, see
Managed Policies and Inline Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the I<IAM User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

