# Generated from json/callresult_class.tt

package Paws::DirectConnect::Loa;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DirectConnect::Types qw//;
  has LoaContent => (is => 'ro', isa => Str);
  has LoaContentType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LoaContentType' => {
                                     'type' => 'Str'
                                   },
               'LoaContent' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'LoaContent' => 'loaContent',
                       'LoaContentType' => 'loaContentType'
                     }
}
;
    return $Params_map;
  }


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