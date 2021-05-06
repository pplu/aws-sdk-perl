
package Paws::RDS::ModifyDBProxyTargetGroupResponse;
  use Moose;
  has DBProxyTargetGroup => (is => 'ro', isa => 'Paws::RDS::DBProxyTargetGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBProxyTargetGroupResponse

=head1 ATTRIBUTES


=head2 DBProxyTargetGroup => L<Paws::RDS::DBProxyTargetGroup>

The settings of the modified C<DBProxyTarget>.


=head2 _request_id => Str


=cut

