
package Paws::EC2::CreateFpgaImageResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has FpgaImageGlobalId => (is => 'ro', isa => Str);
  has FpgaImageId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FpgaImageGlobalId' => {
                                        'type' => 'Str'
                                      },
               'FpgaImageId' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'FpgaImageId' => 'fpgaImageId',
                       'FpgaImageGlobalId' => 'fpgaImageGlobalId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFpgaImageResult

=head1 ATTRIBUTES


=head2 FpgaImageGlobalId => Str

The global FPGA image identifier (AGFI ID).


=head2 FpgaImageId => Str

The FPGA image identifier (AFI ID).


=head2 _request_id => Str


=cut

