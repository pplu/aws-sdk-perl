package Paws::CognitoIdp::AccountTakeoverRiskConfigurationType;
  use Moose;
  has Actions => (is => 'ro', isa => 'Paws::CognitoIdp::AccountTakeoverActionsType', required => 1);
  has NotifyConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::NotifyConfigurationType');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AccountTakeoverRiskConfigurationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::AccountTakeoverRiskConfigurationType object:

  $service_obj->Method(Att1 => { Actions => $value, ..., NotifyConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::AccountTakeoverRiskConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Configuration for mitigation actions and notification for different
levels of risk detected for a potential account takeover.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => L<Paws::CognitoIdp::AccountTakeoverActionsType>

  Account takeover risk configuration actions


=head2 NotifyConfiguration => L<Paws::CognitoIdp::NotifyConfigurationType>

  The notify configuration used to construct email notifications.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

