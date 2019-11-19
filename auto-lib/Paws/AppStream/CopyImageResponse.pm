# Generated from json/callresult_class.tt

package Paws::AppStream::CopyImageResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw//;
  has DestinationImageName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DestinationImageName' => {
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

Paws::AppStream::CopyImageResponse

=head1 ATTRIBUTES


=head2 DestinationImageName => Str

The name of the destination image.


=head2 _request_id => Str


=cut

1;