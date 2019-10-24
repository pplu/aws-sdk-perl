# Generated from json/callresult_class.tt

package Paws::StorageGateway::DeleteTapeArchiveOutput;
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

Paws::StorageGateway::DeleteTapeArchiveOutput

=head1 ATTRIBUTES


=head2 TapeARN => Str

The Amazon Resource Name (ARN) of the virtual tape that was deleted
from the virtual tape shelf (VTS).


=head2 _request_id => Str


=cut

1;