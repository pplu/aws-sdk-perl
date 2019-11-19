# Generated from json/callresult_class.tt

package Paws::StorageGateway::ListTagsForResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StorageGateway::Types qw/StorageGateway_Tag/;
  has Marker => (is => 'ro', isa => Str);
  has ResourceARN => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[StorageGateway_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceARN' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'Tags' => {
                           'type' => 'ArrayRef[StorageGateway_Tag]',
                           'class' => 'Paws::StorageGateway::Tag'
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

Paws::StorageGateway::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Marker => Str

An opaque string that indicates the position at which to stop returning
the list of tags.


=head2 ResourceARN => Str

he Amazon Resource Name (ARN) of the resource for which you want to
list tags.


=head2 Tags => ArrayRef[StorageGateway_Tag]

An array that contains the tags for the specified resource.


=head2 _request_id => Str


=cut

1;