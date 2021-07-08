
package Paws::CustomerProfiles::CreateProfile;
  use Moose;
  has AccountNumber => (is => 'ro', isa => 'Str');
  has AdditionalInformation => (is => 'ro', isa => 'Str');
  has Address => (is => 'ro', isa => 'Paws::CustomerProfiles::Address');
  has Attributes => (is => 'ro', isa => 'Paws::CustomerProfiles::Attributes');
  has BillingAddress => (is => 'ro', isa => 'Paws::CustomerProfiles::Address');
  has BirthDate => (is => 'ro', isa => 'Str');
  has BusinessEmailAddress => (is => 'ro', isa => 'Str');
  has BusinessName => (is => 'ro', isa => 'Str');
  has BusinessPhoneNumber => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has EmailAddress => (is => 'ro', isa => 'Str');
  has FirstName => (is => 'ro', isa => 'Str');
  has Gender => (is => 'ro', isa => 'Str');
  has HomePhoneNumber => (is => 'ro', isa => 'Str');
  has LastName => (is => 'ro', isa => 'Str');
  has MailingAddress => (is => 'ro', isa => 'Paws::CustomerProfiles::Address');
  has MiddleName => (is => 'ro', isa => 'Str');
  has MobilePhoneNumber => (is => 'ro', isa => 'Str');
  has PartyType => (is => 'ro', isa => 'Str');
  has PersonalEmailAddress => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');
  has ShippingAddress => (is => 'ro', isa => 'Paws::CustomerProfiles::Address');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::CreateProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateProfile - Arguments for method CreateProfile on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProfile on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method CreateProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProfile.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $CreateProfileResponse = $profile->CreateProfile(
      DomainName            => 'Myname',
      AccountNumber         => 'Mystring1To255',     # OPTIONAL
      AdditionalInformation => 'Mystring1To1000',    # OPTIONAL
      Address               => {
        Address1   => 'Mystring1To255',    # min: 1, max: 255
        Address2   => 'Mystring1To255',    # min: 1, max: 255
        Address3   => 'Mystring1To255',    # min: 1, max: 255
        Address4   => 'Mystring1To255',    # min: 1, max: 255
        City       => 'Mystring1To255',    # min: 1, max: 255
        Country    => 'Mystring1To255',    # min: 1, max: 255
        County     => 'Mystring1To255',    # min: 1, max: 255
        PostalCode => 'Mystring1To255',    # min: 1, max: 255
        Province   => 'Mystring1To255',    # min: 1, max: 255
        State      => 'Mystring1To255',    # min: 1, max: 255
      },    # OPTIONAL
      Attributes => {
        'Mystring1To255' =>
          'Mystring1To255',    # key: min: 1, max: 255, value: min: 1, max: 255
      },    # OPTIONAL
      BillingAddress => {
        Address1   => 'Mystring1To255',    # min: 1, max: 255
        Address2   => 'Mystring1To255',    # min: 1, max: 255
        Address3   => 'Mystring1To255',    # min: 1, max: 255
        Address4   => 'Mystring1To255',    # min: 1, max: 255
        City       => 'Mystring1To255',    # min: 1, max: 255
        Country    => 'Mystring1To255',    # min: 1, max: 255
        County     => 'Mystring1To255',    # min: 1, max: 255
        PostalCode => 'Mystring1To255',    # min: 1, max: 255
        Province   => 'Mystring1To255',    # min: 1, max: 255
        State      => 'Mystring1To255',    # min: 1, max: 255
      },    # OPTIONAL
      BirthDate            => 'Mystring1To255',    # OPTIONAL
      BusinessEmailAddress => 'Mystring1To255',    # OPTIONAL
      BusinessName         => 'Mystring1To255',    # OPTIONAL
      BusinessPhoneNumber  => 'Mystring1To255',    # OPTIONAL
      EmailAddress         => 'Mystring1To255',    # OPTIONAL
      FirstName            => 'Mystring1To255',    # OPTIONAL
      Gender               => 'MALE',              # OPTIONAL
      HomePhoneNumber      => 'Mystring1To255',    # OPTIONAL
      LastName             => 'Mystring1To255',    # OPTIONAL
      MailingAddress       => {
        Address1   => 'Mystring1To255',    # min: 1, max: 255
        Address2   => 'Mystring1To255',    # min: 1, max: 255
        Address3   => 'Mystring1To255',    # min: 1, max: 255
        Address4   => 'Mystring1To255',    # min: 1, max: 255
        City       => 'Mystring1To255',    # min: 1, max: 255
        Country    => 'Mystring1To255',    # min: 1, max: 255
        County     => 'Mystring1To255',    # min: 1, max: 255
        PostalCode => 'Mystring1To255',    # min: 1, max: 255
        Province   => 'Mystring1To255',    # min: 1, max: 255
        State      => 'Mystring1To255',    # min: 1, max: 255
      },    # OPTIONAL
      MiddleName           => 'Mystring1To255',    # OPTIONAL
      MobilePhoneNumber    => 'Mystring1To255',    # OPTIONAL
      PartyType            => 'INDIVIDUAL',        # OPTIONAL
      PersonalEmailAddress => 'Mystring1To255',    # OPTIONAL
      PhoneNumber          => 'Mystring1To255',    # OPTIONAL
      ShippingAddress      => {
        Address1   => 'Mystring1To255',    # min: 1, max: 255
        Address2   => 'Mystring1To255',    # min: 1, max: 255
        Address3   => 'Mystring1To255',    # min: 1, max: 255
        Address4   => 'Mystring1To255',    # min: 1, max: 255
        City       => 'Mystring1To255',    # min: 1, max: 255
        Country    => 'Mystring1To255',    # min: 1, max: 255
        County     => 'Mystring1To255',    # min: 1, max: 255
        PostalCode => 'Mystring1To255',    # min: 1, max: 255
        Province   => 'Mystring1To255',    # min: 1, max: 255
        State      => 'Mystring1To255',    # min: 1, max: 255
      },    # OPTIONAL
    );

    # Results:
    my $ProfileId = $CreateProfileResponse->ProfileId;

    # Returns a L<Paws::CustomerProfiles::CreateProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/CreateProfile>

=head1 ATTRIBUTES


=head2 AccountNumber => Str

A unique account number that you have given to the customer.



=head2 AdditionalInformation => Str

Any additional information relevant to the customerE<rsquo>s profile.



=head2 Address => L<Paws::CustomerProfiles::Address>

A generic address associated with the customer that is not mailing,
shipping, or billing.



=head2 Attributes => L<Paws::CustomerProfiles::Attributes>

A key value pair of attributes of a customer profile.



=head2 BillingAddress => L<Paws::CustomerProfiles::Address>

The customerE<rsquo>s billing address.



=head2 BirthDate => Str

The customerE<rsquo>s birth date.



=head2 BusinessEmailAddress => Str

The customerE<rsquo>s business email address.



=head2 BusinessName => Str

The name of the customerE<rsquo>s business.



=head2 BusinessPhoneNumber => Str

The customerE<rsquo>s business phone number.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 EmailAddress => Str

The customerE<rsquo>s email address, which has not been specified as a
personal or business address.



=head2 FirstName => Str

The customerE<rsquo>s first name.



=head2 Gender => Str

The gender with which the customer identifies.

Valid values are: C<"MALE">, C<"FEMALE">, C<"UNSPECIFIED">

=head2 HomePhoneNumber => Str

The customerE<rsquo>s home phone number.



=head2 LastName => Str

The customerE<rsquo>s last name.



=head2 MailingAddress => L<Paws::CustomerProfiles::Address>

The customerE<rsquo>s mailing address.



=head2 MiddleName => Str

The customerE<rsquo>s middle name.



=head2 MobilePhoneNumber => Str

The customerE<rsquo>s mobile phone number.



=head2 PartyType => Str

The type of profile used to describe the customer.

Valid values are: C<"INDIVIDUAL">, C<"BUSINESS">, C<"OTHER">

=head2 PersonalEmailAddress => Str

The customerE<rsquo>s personal email address.



=head2 PhoneNumber => Str

The customerE<rsquo>s phone number, which has not been specified as a
mobile, home, or business number.



=head2 ShippingAddress => L<Paws::CustomerProfiles::Address>

The customerE<rsquo>s shipping address.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProfile in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

