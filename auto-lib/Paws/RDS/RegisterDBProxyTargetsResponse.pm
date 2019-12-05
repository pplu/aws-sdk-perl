
package Paws::RDS::RegisterDBProxyTargetsResponse;
  use Moose;
  has DBProxyTargets => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBProxyTarget]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RegisterDBProxyTargetsResponse

=head1 ATTRIBUTES


=head2 DBProxyTargets => ArrayRef[L<Paws::RDS::DBProxyTarget>]

One or more C<DBProxyTarget> objects that are created when you register
targets with a target group.


=head2 _request_id => Str


=cut

