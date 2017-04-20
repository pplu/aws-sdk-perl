
package Paws::DirectConnect::Loa;
  use Moose;
  has LoaContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loaContent' );
  has LoaContentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loaContentType' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Loa

=head1 ATTRIBUTES


=head2 LoaContent => Str




=head2 LoaContentType => Str



Valid values are: C<"application/pdf">
=head2 _request_id => Str


=cut

1;