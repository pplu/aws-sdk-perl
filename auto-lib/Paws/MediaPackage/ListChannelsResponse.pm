
package Paws::MediaPackage::ListChannelsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaPackage::Types qw/MediaPackage_Channel/;
  has Channels => (is => 'ro', isa => ArrayRef[MediaPackage_Channel]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Channels' => 'channels'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Channels' => {
                               'type' => 'ArrayRef[MediaPackage_Channel]',
                               'class' => 'Paws::MediaPackage::Channel'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::ListChannelsResponse

=head1 ATTRIBUTES


=head2 Channels => ArrayRef[MediaPackage_Channel]

A list of Channel records.


=head2 NextToken => Str

A token that can be used to resume pagination from the end of the
collection.


=head2 _request_id => Str


=cut

