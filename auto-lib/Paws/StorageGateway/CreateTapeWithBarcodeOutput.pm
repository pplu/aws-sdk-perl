# Generated from json/callresult_class.tt

package Paws::StorageGateway::CreateTapeWithBarcodeOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has TapeARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TapeARN' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateTapeWithBarcodeOutput

=head1 ATTRIBUTES


=head2 TapeARN => Str

A unique Amazon Resource Name (ARN) that represents the virtual tape
that was created.


=head2 _request_id => Str


=cut

1;