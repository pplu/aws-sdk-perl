
package Paws::RDS::ModifyCertificatesResult;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Paws::RDS::Certificate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyCertificatesResult

=head1 ATTRIBUTES


=head2 Certificate => L<Paws::RDS::Certificate>




=head2 _request_id => Str


=cut

