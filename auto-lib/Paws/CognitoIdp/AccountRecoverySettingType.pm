package Paws::CognitoIdp::AccountRecoverySettingType;
  use Moose;
  has RecoveryMechanisms => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::RecoveryOptionType]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AccountRecoverySettingType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::AccountRecoverySettingType object:

  $service_obj->Method(Att1 => { RecoveryMechanisms => $value, ..., RecoveryMechanisms => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::AccountRecoverySettingType object:

  $result = $service_obj->Method(...);
  $result->Att1->RecoveryMechanisms

=head1 DESCRIPTION

The data type for C<AccountRecoverySetting>.

=head1 ATTRIBUTES


=head2 RecoveryMechanisms => ArrayRef[L<Paws::CognitoIdp::RecoveryOptionType>]

  The list of C<RecoveryOptionTypes>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

