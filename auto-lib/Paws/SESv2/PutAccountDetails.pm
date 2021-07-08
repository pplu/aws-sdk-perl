
package Paws::SESv2::PutAccountDetails;
  use Moose;
  has AdditionalContactEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ContactLanguage => (is => 'ro', isa => 'Str');
  has MailType => (is => 'ro', isa => 'Str', required => 1);
  has ProductionAccessEnabled => (is => 'ro', isa => 'Bool');
  has UseCaseDescription => (is => 'ro', isa => 'Str', required => 1);
  has WebsiteURL => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAccountDetails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/account/details');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::PutAccountDetailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutAccountDetails - Arguments for method PutAccountDetails on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccountDetails on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutAccountDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccountDetails.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutAccountDetailsResponse = $email->PutAccountDetails(
      MailType                        => 'MARKETING',
      UseCaseDescription              => 'MyUseCaseDescription',
      WebsiteURL                      => 'MyWebsiteURL',
      AdditionalContactEmailAddresses => [
        'MyAdditionalContactEmailAddress', ...    # min: 6, max: 254
      ],    # OPTIONAL
      ContactLanguage         => 'EN',    # OPTIONAL
      ProductionAccessEnabled => 1,       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutAccountDetails>

=head1 ATTRIBUTES


=head2 AdditionalContactEmailAddresses => ArrayRef[Str|Undef]

Additional email addresses that you would like to be notified regarding
Amazon SES matters.



=head2 ContactLanguage => Str

The language you would prefer to be contacted with.

Valid values are: C<"EN">, C<"JA">

=head2 B<REQUIRED> MailType => Str

The type of email your account will send.

Valid values are: C<"MARKETING">, C<"TRANSACTIONAL">

=head2 ProductionAccessEnabled => Bool

Indicates whether or not your account should have production access in
the current AWS Region.

If the value is C<false>, then your account is in the I<sandbox>. When
your account is in the sandbox, you can only send email to verified
identities. Additionally, the maximum number of emails you can send in
a 24-hour period (your sending quota) is 200, and the maximum number of
emails you can send per second (your maximum sending rate) is 1.

If the value is C<true>, then your account has production access. When
your account has production access, you can send email to any address.
The sending quota and maximum sending rate for your account vary based
on your specific use case.



=head2 B<REQUIRED> UseCaseDescription => Str

A description of the types of email that you plan to send.



=head2 B<REQUIRED> WebsiteURL => Str

The URL of your website. This information helps us better understand
the type of content that you plan to send.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccountDetails in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

