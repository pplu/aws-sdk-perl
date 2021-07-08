
package Paws::SNS::CreateSMSSandboxPhoneNumber;
  use Moose;
  has LanguageCode => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSMSSandboxPhoneNumber');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::CreateSMSSandboxPhoneNumberResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateSMSSandboxPhoneNumberResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CreateSMSSandboxPhoneNumber - Arguments for method CreateSMSSandboxPhoneNumber on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSMSSandboxPhoneNumber on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method CreateSMSSandboxPhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSMSSandboxPhoneNumber.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $CreateSMSSandboxPhoneNumberResult = $sns->CreateSMSSandboxPhoneNumber(
      PhoneNumber  => 'MyPhoneNumberString',
      LanguageCode => 'en-US',                 # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/CreateSMSSandboxPhoneNumber>

=head1 ATTRIBUTES


=head2 LanguageCode => Str

The language to use for sending the OTP. The default value is C<en-US>.

Valid values are: C<"en-US">, C<"en-GB">, C<"es-419">, C<"es-ES">, C<"de-DE">, C<"fr-CA">, C<"fr-FR">, C<"it-IT">, C<"ja-JP">, C<"pt-BR">, C<"kr-KR">, C<"zh-CN">, C<"zh-TW">

=head2 B<REQUIRED> PhoneNumber => Str

The destination phone number to verify. On verification, Amazon SNS
adds this phone number to the list of verified phone numbers that you
can send SMS messages to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSMSSandboxPhoneNumber in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

