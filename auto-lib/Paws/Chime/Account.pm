package Paws::Chime::Account;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has AccountType => (is => 'ro', isa => 'Str');
  has AwsAccountId => (is => 'ro', isa => 'Str', required => 1);
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DefaultLicense => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SupportedLicenses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::Account

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::Account object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., SupportedLicenses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::Account object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The Amazon Chime account details. An AWS account can have multiple
Amazon Chime accounts.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

  The Amazon Chime account ID.


=head2 AccountType => Str

  The Amazon Chime account type. For more information about different
account types, see Managing Your Amazon Chime Accounts
(http://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
in the I<Amazon Chime Administration Guide>.


=head2 B<REQUIRED> AwsAccountId => Str

  The AWS account ID.


=head2 CreatedTimestamp => Str

  The Amazon Chime account creation timestamp, in ISO 8601 format.


=head2 DefaultLicense => Str

  The default license for the Amazon Chime account.


=head2 B<REQUIRED> Name => Str

  The Amazon Chime account name.


=head2 SupportedLicenses => ArrayRef[Str|Undef]

  Supported licenses for the Amazon Chime account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

