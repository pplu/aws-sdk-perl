
package Paws::Route53Domains::GetContactReachabilityStatusResponse;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );


### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetContactReachabilityStatusResponse

=head1 ATTRIBUTES


=head2 DomainName => Str

The domain name for which you requested the reachability status.



=head2 Status => Str

Whether the registrant contact has responded. C<PENDING> indicates that
we sent the confirmation email and haven't received a response yet,
C<DONE> indicates that we sent the email and got confirmation from the
registrant contact, and C<EXPIRED> indicates that the time limit
expired before the registrant contact responded.

Type: String

Valid values: C<PENDING>, C<DONE>, C<EXPIRED>

Valid values are: C<"PENDING">, C<"DONE">, C<"EXPIRED">


=cut

1;