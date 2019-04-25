package Paws::IAM::PolicyUser;
  use Moose;
  has UserId => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::PolicyUser

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::PolicyUser object:

  $service_obj->Method(Att1 => { UserId => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::PolicyUser object:

  $result = $service_obj->Method(...);
  $result->Att1->UserId

=head1 DESCRIPTION

Contains information about a user that a managed policy is attached to.

This data type is used as a response element in the
ListEntitiesForPolicy operation.

For more information about managed policies, refer to Managed Policies
and Inline Policies
(http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html)
in the I<Using IAM> guide.

=head1 ATTRIBUTES


=head2 UserId => Str

  The stable and unique string identifying the user. For more information
about IDs, see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html)
in the I<IAM User Guide>.


=head2 UserName => Str

  The name (friendly name, not ARN) identifying the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

