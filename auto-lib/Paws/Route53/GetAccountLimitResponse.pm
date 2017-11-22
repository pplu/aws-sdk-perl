
package Paws::Route53::GetAccountLimitResponse;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', required => 1);
  has Limit => (is => 'ro', isa => 'Paws::Route53::AccountLimit', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetAccountLimitResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

The current number of entities that you have created of the specified
type. For example, if you specified C<MAX_HEALTH_CHECKS_BY_OWNER> for
the value of C<Type> in the request, the value of C<Count> is the
current number of health checks that you have created using the current
account.



=head2 B<REQUIRED> Limit => L<Paws::Route53::AccountLimit>

The current setting for the specified limit. For example, if you
specified C<MAX_HEALTH_CHECKS_BY_OWNER> for the value of C<Type> in the
request, the value of C<Limit> is the maximum number of health checks
that you can create using the current account.




=cut

