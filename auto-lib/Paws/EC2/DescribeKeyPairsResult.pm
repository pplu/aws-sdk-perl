
package Paws::EC2::DescribeKeyPairsResult;
  use Moose;
  has KeyPairs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::KeyPairInfo]', request_name => 'keySet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeKeyPairsResult

=head1 ATTRIBUTES


=head2 KeyPairs => ArrayRef[L<Paws::EC2::KeyPairInfo>]

Information about one or more key pairs.


=head2 _request_id => Str


=cut

