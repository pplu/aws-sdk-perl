# Generated from json/callresult_class.tt

package Paws::Snowball::ListCompatibleImagesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Snowball::Types qw/Snowball_CompatibleImage/;
  has CompatibleImages => (is => 'ro', isa => ArrayRef[Snowball_CompatibleImage]);
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
               'CompatibleImages' => {
                                       'type' => 'ArrayRef[Snowball_CompatibleImage]',
                                       'class' => 'Paws::Snowball::CompatibleImage'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListCompatibleImagesResult

=head1 ATTRIBUTES


=head2 CompatibleImages => ArrayRef[Snowball_CompatibleImage]

A JSON-formatted object that describes a compatible AMI, including the
ID and name for a Snowball Edge AMI.


=head2 NextToken => Str

Because HTTP requests are stateless, this is the starting point for
your next list of returned images.


=head2 _request_id => Str


=cut

1;