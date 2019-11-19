
package Paws::Chime::RestorePhoneNumber;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has PhoneNumberId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RestorePhoneNumber');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/phone-numbers/{phoneNumberId}?operation=restore');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::RestorePhoneNumberResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PhoneNumberId' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'PhoneNumberId' => 1
                  },
  'ParamInURI' => {
                    'PhoneNumberId' => 'phoneNumberId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::RestorePhoneNumber - Arguments for method RestorePhoneNumber on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestorePhoneNumber on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method RestorePhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestorePhoneNumber.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $RestorePhoneNumberResponse = $chime->RestorePhoneNumber(
      PhoneNumberId => 'MyNonEmptyString',

    );

    # Results:
    my $PhoneNumber = $RestorePhoneNumberResponse->PhoneNumber;

    # Returns a L<Paws::Chime::RestorePhoneNumberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/RestorePhoneNumber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PhoneNumberId => Str

The phone number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestorePhoneNumber in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

