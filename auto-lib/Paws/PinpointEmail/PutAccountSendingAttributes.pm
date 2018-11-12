
package Paws::PinpointEmail::PutAccountSendingAttributes;
  use Moose;
  has SendingEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccountSendingAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/email/account/sending');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointEmail::PutAccountSendingAttributesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::PutAccountSendingAttributes - Arguments for method PutAccountSendingAttributes on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccountSendingAttributes on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method PutAccountSendingAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccountSendingAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
    my $PutAccountSendingAttributesResponse =
      $email->PutAccountSendingAttributes(
      SendingEnabled => 1,    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutAccountSendingAttributes>

=head1 ATTRIBUTES


=head2 SendingEnabled => Bool

Enables or disables your account's ability to send email. Set to
C<true> to enable email sending, or set to C<false> to disable email
sending.

If AWS paused your account's ability to send email, you can't use this
operation to resume your account's ability to send email.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccountSendingAttributes in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

