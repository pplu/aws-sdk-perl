
package Paws::RDS::DeleteDBProxyResponse;
  use Moose;
  has DBProxy => (is => 'ro', isa => 'Paws::RDS::DBProxy');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteDBProxyResponse

=head1 ATTRIBUTES


=head2 DBProxy => L<Paws::RDS::DBProxy>

The data structure representing the details of the DB proxy that you
delete.


=head2 _request_id => Str


=cut

