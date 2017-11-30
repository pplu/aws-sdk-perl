package Paws::CognitoIdp::AccountTakeoverActionType;
  use Moose;
  has EventAction => (is => 'ro', isa => 'Str', required => 1);
  has Notify => (is => 'ro', isa => 'Bool', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AccountTakeoverActionType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::AccountTakeoverActionType object:

  $service_obj->Method(Att1 => { EventAction => $value, ..., Notify => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::AccountTakeoverActionType object:

  $result = $service_obj->Method(...);
  $result->Att1->EventAction

=head1 DESCRIPTION

Account takeover action type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventAction => Str

  The event action.

=over

=item *

C<BLOCK> Choosing this action will block the request.

=item *

C<MFA_IF_CONFIGURED> Throw MFA challenge if user has configured it,
else allow the request.

=item *

C<MFA_REQUIRED> Throw MFA challenge if user has configured it, else
block the request.

=item *

C<NO_ACTION> Allow the user sign-in.

=back



=head2 B<REQUIRED> Notify => Bool

  Flag specifying whether to send a notification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

