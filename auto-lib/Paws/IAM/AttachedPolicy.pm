package Paws::IAM::AttachedPolicy;
  use Moose;
  has PolicyArn => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::AttachedPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::AttachedPolicy object:

  $service_obj->Method(Att1 => { PolicyArn => $value, ..., PolicyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::AttachedPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->PolicyArn

=head1 DESCRIPTION

Contains information about an attached policy.

An attached policy is a managed policy that has been attached to a
user, group, or role. This data type is used as a response element in
the ListAttachedGroupPolicies, ListAttachedRolePolicies,
ListAttachedUserPolicies, and GetAccountAuthorizationDetails
operations.

For more information about managed policies, refer to Managed Policies
and Inline Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
in the I<Using IAM> guide.

=head1 ATTRIBUTES


=head2 PolicyArn => Str

  


=head2 PolicyName => Str

  The friendly name of the attached policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

