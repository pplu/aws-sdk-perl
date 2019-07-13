package Paws::Chime::PhoneNumberError;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has PhoneNumberId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PhoneNumberError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::PhoneNumberError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., PhoneNumberId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::PhoneNumberError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

If the phone number action fails for one or more of the phone numbers
in the request, a list of the phone numbers is returned, along with
error codes and error messages.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code.


=head2 ErrorMessage => Str

  The error message.


=head2 PhoneNumberId => Str

  The phone number ID for which the action failed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

