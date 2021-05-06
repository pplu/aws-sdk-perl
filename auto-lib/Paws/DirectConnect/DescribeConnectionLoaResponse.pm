
package Paws::DirectConnect::DescribeConnectionLoaResponse;
  use Moose;
  has Loa => (is => 'ro', isa => 'Paws::DirectConnect::Loa', traits => ['NameInRequest'], request_name => 'loa' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeConnectionLoaResponse

=head1 ATTRIBUTES


=head2 Loa => L<Paws::DirectConnect::Loa>

The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).


=head2 _request_id => Str


=cut

1;