
package Paws::Lightsail::CreateContactMethod;
  use Moose;
  has ContactEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contactEndpoint' , required => 1);
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContactMethod');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateContactMethodResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateContactMethod - Arguments for method CreateContactMethod on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContactMethod on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateContactMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContactMethod.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateContactMethodResult = $lightsail->CreateContactMethod(
      ContactEndpoint => 'MyStringMax256',
      Protocol        => 'Email',

    );

    # Results:
    my $Operations = $CreateContactMethodResult->Operations;

    # Returns a L<Paws::Lightsail::CreateContactMethodResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateContactMethod>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactEndpoint => Str

The destination of the contact method, such as an email address or a
mobile phone number.

Use the E.164 format when specifying a mobile phone number. E.164 is a
standard for the phone number structure used for international
telecommunication. Phone numbers that follow this format can have a
maximum of 15 digits, and they are prefixed with the plus character (+)
and the country code. For example, a U.S. phone number in E.164 format
would be specified as +1XXX5550100. For more information, see E.164
(https://en.wikipedia.org/wiki/E.164) on I<Wikipedia>.



=head2 B<REQUIRED> Protocol => Str

The protocol of the contact method, such as C<Email> or C<SMS> (text
messaging).

The C<SMS> protocol is supported only in the following AWS Regions.

=over

=item *

US East (N. Virginia) (C<us-east-1>)

=item *

US West (Oregon) (C<us-west-2>)

=item *

Europe (Ireland) (C<eu-west-1>)

=item *

Asia Pacific (Tokyo) (C<ap-northeast-1>)

=item *

Asia Pacific (Singapore) (C<ap-southeast-1>)

=item *

Asia Pacific (Sydney) (C<ap-southeast-2>)

=back

For a list of countries/regions where SMS text messages can be sent,
and the latest AWS Regions where SMS text messaging is supported, see
Supported Regions and Countries
(https://docs.aws.amazon.com/sns/latest/dg/sns-supported-regions-countries.html)
in the I<Amazon SNS Developer Guide>.

For more information about notifications in Amazon Lightsail, see
Notifications in Amazon Lightsail
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications).

Valid values are: C<"Email">, C<"SMS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContactMethod in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

