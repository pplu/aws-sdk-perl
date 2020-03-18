
package Paws::Pinpoint::PhoneNumberValidate;
  use Moose;
  has NumberValidateRequest => (is => 'ro', isa => 'Paws::Pinpoint::NumberValidateRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'NumberValidateRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PhoneNumberValidate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/phone/number/validate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::PhoneNumberValidateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::PhoneNumberValidate - Arguments for method PhoneNumberValidate on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PhoneNumberValidate on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method PhoneNumberValidate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PhoneNumberValidate.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $PhoneNumberValidateResponse = $pinpoint->PhoneNumberValidate(
      NumberValidateRequest => {
        IsoCountryCode => 'My__string',    # OPTIONAL
        PhoneNumber    => 'My__string',    # OPTIONAL
      },

    );

    # Results:
    my $NumberValidateResponse =
      $PhoneNumberValidateResponse->NumberValidateResponse;

    # Returns a L<Paws::Pinpoint::PhoneNumberValidateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/PhoneNumberValidate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NumberValidateRequest => L<Paws::Pinpoint::NumberValidateRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PhoneNumberValidate in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

