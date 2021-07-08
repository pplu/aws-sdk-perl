
package Paws::Chime::UpdateSipMediaApplicationCall;
  use Moose;
  has Arguments => (is => 'ro', isa => 'Paws::Chime::SMAUpdateCallArgumentsMap', required => 1);
  has SipMediaApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sipMediaApplicationId', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'transactionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSipMediaApplicationCall');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sip-media-applications/{sipMediaApplicationId}/calls/{transactionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::UpdateSipMediaApplicationCallResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateSipMediaApplicationCall - Arguments for method UpdateSipMediaApplicationCall on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSipMediaApplicationCall on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method UpdateSipMediaApplicationCall.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSipMediaApplicationCall.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $UpdateSipMediaApplicationCallResponse =
      $chime->UpdateSipMediaApplicationCall(
      Arguments             => { 'MySensitiveString' => 'MySensitiveString', },
      SipMediaApplicationId => 'MyNonEmptyString',
      TransactionId         => 'MyNonEmptyString',

      );

    # Results:
    my $SipMediaApplicationCall =
      $UpdateSipMediaApplicationCallResponse->SipMediaApplicationCall;

    # Returns a L<Paws::Chime::UpdateSipMediaApplicationCallResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/UpdateSipMediaApplicationCall>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arguments => L<Paws::Chime::SMAUpdateCallArgumentsMap>

Arguments made available to the Lambda function as part of the
C<CALL_UPDATE_REQUESTED> event. Can contain 0-20 key-value pairs.



=head2 B<REQUIRED> SipMediaApplicationId => Str

The ID of the SIP media application handling the call.



=head2 B<REQUIRED> TransactionId => Str

The ID of the call transaction.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSipMediaApplicationCall in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

