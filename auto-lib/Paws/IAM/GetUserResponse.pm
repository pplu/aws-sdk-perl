
package Paws::IAM::GetUserResponse;
  use Moose;
  has User => (is => 'ro', isa => 'Paws::IAM::User', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetUserResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> User => L<Paws::IAM::User>

A structure containing details about the IAM user.

Due to a service issue, password last used data does not include
password use from May 3, 2018 22:50 PDT to May 23, 2018 14:08 PDT. This
affects last sign-in
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_finding-unused.html)
dates shown in the IAM console and password last used dates in the IAM
credential report
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html),
and returned by this GetUser API. If users signed in during the
affected time, the password last used date that is returned is the date
the user last signed in before May 3, 2018. For users that signed in
after May 23, 2018 14:08 PDT, the returned password last used date is
accurate.

You can use password last used information to identify unused
credentials for deletion. For example, you might delete users who did
not sign in to AWS in the last 90 days. In cases like this, we
recommend that you adjust your evaluation window to include dates after
May 23, 2018. Alternatively, if your users use access keys to access
AWS programmatically you can refer to access key last used information
because it is accurate for all dates.


=head2 _request_id => Str


=cut

