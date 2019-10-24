
package Paws::EC2::DescribeFpgaImageAttributeResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_FpgaImageAttribute/;
  has FpgaImageAttribute => (is => 'ro', isa => EC2_FpgaImageAttribute);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FpgaImageAttribute' => {
                                         'class' => 'Paws::EC2::FpgaImageAttribute',
                                         'type' => 'EC2_FpgaImageAttribute'
                                       }
             },
  'NameInRequest' => {
                       'FpgaImageAttribute' => 'fpgaImageAttribute'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFpgaImageAttributeResult

=head1 ATTRIBUTES


=head2 FpgaImageAttribute => EC2_FpgaImageAttribute

Information about the attribute.


=head2 _request_id => Str


=cut

