package Paws::CognitoIdp::RecoveryOptionType;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Priority => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::RecoveryOptionType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::RecoveryOptionType object:

  $service_obj->Method(Att1 => { Name => $value, ..., Priority => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::RecoveryOptionType object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A map containing a priority as a key, and recovery method name as a
value.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  Specifies the recovery method for a user.


=head2 B<REQUIRED> Priority => Int

  A positive integer specifying priority of a method with 1 being the
highest priority.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

