
package Paws::EC2::DescribeFpgaImageAttributeResult;
  use Moose;
  has FpgaImageAttribute => (is => 'ro', isa => 'Paws::EC2::FpgaImageAttribute', request_name => 'fpgaImageAttribute', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFpgaImageAttributeResult

=head1 ATTRIBUTES


=head2 FpgaImageAttribute => L<Paws::EC2::FpgaImageAttribute>

Information about the attribute.


=head2 _request_id => Str


=cut

