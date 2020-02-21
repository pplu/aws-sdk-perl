package Paws::IAM::PermissionsBoundaryDecisionDetail;
  use Moose;
  has AllowedByPermissionsBoundary => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::PermissionsBoundaryDecisionDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::PermissionsBoundaryDecisionDetail object:

  $service_obj->Method(Att1 => { AllowedByPermissionsBoundary => $value, ..., AllowedByPermissionsBoundary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::PermissionsBoundaryDecisionDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedByPermissionsBoundary

=head1 DESCRIPTION

Contains information about the effect that a permissions boundary has
on a policy simulation when the boundary is applied to an IAM entity.

=head1 ATTRIBUTES


=head2 AllowedByPermissionsBoundary => Bool

  Specifies whether an action is allowed by a permissions boundary that
is applied to an IAM entity (user or role). A value of C<true> means
that the permissions boundary does not deny the action. This means that
the policy includes an C<Allow> statement that matches the request. In
this case, if an identity-based policy also allows the action, the
request is allowed. A value of C<false> means that either the requested
action is not allowed (implicitly denied) or that the action is
explicitly denied by the permissions boundary. In both of these cases,
the action is not allowed, regardless of the identity-based policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

