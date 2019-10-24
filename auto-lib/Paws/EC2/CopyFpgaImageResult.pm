
package Paws::EC2::CopyFpgaImageResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has FpgaImageId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FpgaImageId' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'FpgaImageId' => 'fpgaImageId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopyFpgaImageResult

=head1 ATTRIBUTES


=head2 FpgaImageId => Str

The ID of the new AFI.


=head2 _request_id => Str


=cut

