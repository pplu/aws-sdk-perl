
package Paws::EC2::DescribeFpgaImagesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_FpgaImage/;
  has FpgaImages => (is => 'ro', isa => ArrayRef[EC2_FpgaImage]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FpgaImages' => {
                                 'class' => 'Paws::EC2::FpgaImage',
                                 'type' => 'ArrayRef[EC2_FpgaImage]'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'FpgaImages' => 'fpgaImageSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFpgaImagesResult

=head1 ATTRIBUTES


=head2 FpgaImages => ArrayRef[EC2_FpgaImage]

Information about the FPGA images.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

