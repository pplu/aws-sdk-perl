
package Paws::Chime::CreateSipMediaApplicationCall;
  use Moose;
  has FromPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has SipMediaApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sipMediaApplicationId', required => 1);
  has ToPhoneNumber => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSipMediaApplicationCall');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sip-media-applications/{sipMediaApplicationId}/calls');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateSipMediaApplicationCallResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateSipMediaApplicationCall - Arguments for method CreateSipMediaApplicationCall on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSipMediaApplicationCall on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateSipMediaApplicationCall.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSipMediaApplicationCall.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateSipMediaApplicationCallResponse =
      $chime->CreateSipMediaApplicationCall(
      FromPhoneNumber       => 'MyE164PhoneNumber',
      SipMediaApplicationId => 'MyNonEmptyString',
      ToPhoneNumber         => 'MyE164PhoneNumber',

      );

    # Results:
    my $SipMediaApplicationCall =
      $CreateSipMediaApplicationCallResponse->SipMediaApplicationCall;

    # Returns a L<Paws::Chime::CreateSipMediaApplicationCallResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateSipMediaApplicationCall>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FromPhoneNumber => Str

The phone number that a user calls from. This is a phone number in your
Amazon Chime phone number inventory.



=head2 B<REQUIRED> SipMediaApplicationId => Str

The ID of the SIP media application.



=head2 B<REQUIRED> ToPhoneNumber => Str

The phone number that the service should call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSipMediaApplicationCall in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

