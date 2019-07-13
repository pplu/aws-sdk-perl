package Paws::Pinpoint::NumberValidateRequest;
  use Moose;
  has IsoCountryCode => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::NumberValidateRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::NumberValidateRequest object:

  $service_obj->Method(Att1 => { IsoCountryCode => $value, ..., PhoneNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::NumberValidateRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->IsoCountryCode

=head1 DESCRIPTION

Specifies a phone number to validate and retrieve information about.

=head1 ATTRIBUTES


=head2 IsoCountryCode => Str

  The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region where the phone number was originally registered.


=head2 PhoneNumber => Str

  The phone number to retrieve information about. The phone number that
you provide should include a valid numeric country code. Otherwise, the
operation might result in an error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

