package Paws::Organizations::CreateAccountStatus;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has AccountName => (is => 'ro', isa => 'Str');
  has CompletedTimestamp => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has RequestedTimestamp => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreateAccountStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::CreateAccountStatus object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::CreateAccountStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Contains the status about a CreateAccount request to create an AWS
account in an organization.

=head1 ATTRIBUTES


=head2 AccountId => Str

  If the account was created successfully, the unique identifier (ID) of
the new account.

The regex pattern (http://wikipedia.org/wiki/regex) for an account ID
string requires exactly 12 digits.


=head2 AccountName => Str

  The account name given to the account when it was created.


=head2 CompletedTimestamp => Str

  The date and time that the account was created and the request
completed.


=head2 FailureReason => Str

  If the request failed, a description of the reason for the failure.

=over

=item *

ACCOUNT_LIMIT_EXCEEDED: The account could not be created because you
have reached the limit on the number of accounts in your organization.

=item *

EMAIL_ALREADY_EXISTS: The account could not be created because another
AWS account with that email address already exists.

=item *

INVALID_ADDRESS: The account could not be created because the address
you provided is not valid.

=item *

INVALID_EMAIL: The account could not be created because the email
address you provided is not valid.

=item *

INTERNAL_FAILURE: The account could not be created because of an
internal failure. Try again later. If the problem persists, contact
Customer Support.

=back



=head2 Id => Str

  The unique identifier (ID) that references this request. You get this
value from the response of the initial CreateAccount request to create
the account.

The regex pattern (http://wikipedia.org/wiki/regex) for an create
account request ID string requires "car-" followed by from 8 to 32
lower-case letters or digits.


=head2 RequestedTimestamp => Str

  The date and time that the request was made for the account creation.


=head2 State => Str

  The status of the request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

