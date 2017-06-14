
package Paws::Route53Domains::GetContactReachabilityStatusResponse;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetContactReachabilityStatusResponse

=head1 ATTRIBUTES


=head2 DomainName => Str

The domain name for which you requested the reachability status.


=head2 Status => Str

Whether the registrant contact has responded. Values include the
following:

=over

=item PENDING

We sent the confirmation email and haven't received a response yet.

=item DONE

We sent the email and got confirmation from the registrant contact.

=item EXPIRED

The time limit expired before the registrant contact responded.

=back


Valid values are: C<"PENDING">, C<"DONE">, C<"EXPIRED">
=head2 _request_id => Str


=cut

1;