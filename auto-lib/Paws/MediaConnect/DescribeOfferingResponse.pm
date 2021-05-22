
package Paws::MediaConnect::DescribeOfferingResponse;
  use Moose;
  has Offering => (is => 'ro', isa => 'Paws::MediaConnect::Offering', traits => ['NameInRequest'], request_name => 'offering');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::DescribeOfferingResponse

=head1 ATTRIBUTES


=head2 Offering => L<Paws::MediaConnect::Offering>




=head2 _request_id => Str


=cut

