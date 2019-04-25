
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

The binary contents of the LOA-CFA document.


=head2 LoaContentType => Str

The standard media type for the LOA-CFA document. The only supported
value is application/pdf.

Valid values are: C<"application/pdf">
=head2 _request_id => Str


=cut

1;