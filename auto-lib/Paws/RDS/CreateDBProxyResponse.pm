
package Paws::RDS::CreateDBProxyResponse;
  use Moose;
  has DBProxy => (is => 'ro', isa => 'Paws::RDS::DBProxy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBProxyResponse

=head1 ATTRIBUTES


=head2 DBProxy => L<Paws::RDS::DBProxy>

The C<DBProxy> structure corresponding to the new proxy.


=head2 _request_id => Str


=cut

