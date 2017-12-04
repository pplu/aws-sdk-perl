package Paws::CognitoIdp::AccountTakeoverActionsType;
  use Moose;
  has HighAction => (is => 'ro', isa => 'Paws::CognitoIdp::AccountTakeoverActionType');
  has LowAction => (is => 'ro', isa => 'Paws::CognitoIdp::AccountTakeoverActionType');
  has MediumAction => (is => 'ro', isa => 'Paws::CognitoIdp::AccountTakeoverActionType');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AccountTakeoverActionsType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::AccountTakeoverActionsType object:

  $service_obj->Method(Att1 => { HighAction => $value, ..., MediumAction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::AccountTakeoverActionsType object:

  $result = $service_obj->Method(...);
  $result->Att1->HighAction

=head1 DESCRIPTION

Account takeover actions type.

=head1 ATTRIBUTES


=head2 HighAction => L<Paws::CognitoIdp::AccountTakeoverActionType>

  Action to take for a high risk.


=head2 LowAction => L<Paws::CognitoIdp::AccountTakeoverActionType>

  Action to take for a low risk.


=head2 MediumAction => L<Paws::CognitoIdp::AccountTakeoverActionType>

  Action to take for a medium risk.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

