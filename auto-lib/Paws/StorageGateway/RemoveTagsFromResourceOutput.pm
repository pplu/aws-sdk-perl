# Generated from json/callresult_class.tt

package Paws::StorageGateway::RemoveTagsFromResourceOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw//;
  has ResourceARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceARN' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::RemoveTagsFromResourceOutput

=head1 ATTRIBUTES


=head2 ResourceARN => Str

The Amazon Resource Name (ARN) of the resource that the tags were
removed from.


=head2 _request_id => Str


=cut

1;