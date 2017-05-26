
package Paws::Route53Domains::ResendContactReachabilityEmailResponse;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName' );
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'emailAddress' );
  has IsAlreadyVerified => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isAlreadyVerified' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ResendContactReachabilityEmailResponse

=head1 ATTRIBUTES


=head2 DomainName => Str

The domain name for which you requested a confirmation email.


=head2 EmailAddress => Str

The email address for the registrant contact at the time that we sent
the verification email.


=head2 IsAlreadyVerified => Bool

C<True> if the email address for the registrant contact has already
been verified, and C<false> otherwise. If the email address has already
been verified, we don't send another confirmation email.


=head2 _request_id => Str


=cut

1;