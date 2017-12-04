package Paws::CognitoIdp::RiskConfigurationType;
  use Moose;
  has AccountTakeoverRiskConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::AccountTakeoverRiskConfigurationType');
  has ClientId => (is => 'ro', isa => 'Str');
  has CompromisedCredentialsRiskConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::CompromisedCredentialsRiskConfigurationType');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has RiskExceptionConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::RiskExceptionConfigurationType');
  has UserPoolId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::RiskConfigurationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::RiskConfigurationType object:

  $service_obj->Method(Att1 => { AccountTakeoverRiskConfiguration => $value, ..., UserPoolId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::RiskConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountTakeoverRiskConfiguration

=head1 DESCRIPTION

The risk configuration type.

=head1 ATTRIBUTES


=head2 AccountTakeoverRiskConfiguration => L<Paws::CognitoIdp::AccountTakeoverRiskConfigurationType>

  The account takeover risk configuration object including the
C<NotifyConfiguration> object and C<Actions> to take in the case of an
account takeover.


=head2 ClientId => Str

  The app client ID.


=head2 CompromisedCredentialsRiskConfiguration => L<Paws::CognitoIdp::CompromisedCredentialsRiskConfigurationType>

  The compromised credentials risk configuration object including the
C<EventFilter> and the C<EventAction>


=head2 LastModifiedDate => Str

  The last modified date.


=head2 RiskExceptionConfiguration => L<Paws::CognitoIdp::RiskExceptionConfigurationType>

  The configuration to override the risk decision.


=head2 UserPoolId => Str

  The user pool ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

