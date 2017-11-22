
package Paws::Route53::GetHostedZoneLimitResponse;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', required => 1);
  has Limit => (is => 'ro', isa => 'Paws::Route53::HostedZoneLimit', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHostedZoneLimitResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

The current number of entities that you have created of the specified
type. For example, if you specified C<MAX_RRSETS_BY_ZONE> for the value
of C<Type> in the request, the value of C<Count> is the current number
of records that you have created in the specified hosted zone.



=head2 B<REQUIRED> Limit => L<Paws::Route53::HostedZoneLimit>

The current setting for the specified limit. For example, if you
specified C<MAX_RRSETS_BY_ZONE> for the value of C<Type> in the
request, the value of C<Limit> is the maximum number of records that
you can create in the specified hosted zone.




=cut

