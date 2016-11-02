
package Paws::Route53::GetChangeDetailsResponse;
  use Moose;
  has ChangeBatchRecord => (is => 'ro', isa => 'Paws::Route53::ChangeBatchRecord', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetChangeDetailsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeBatchRecord => L<Paws::Route53::ChangeBatchRecord>

A complex type that contains information about the specified change
batch, including the change batch ID, the status of the change, and the
contained changes.




=cut

