# Generated from json/callresult_class.tt

package Paws::DAX::UntagResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DAX::Types qw/DAX_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[DAX_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::DAX::Tag',
                           'type' => 'ArrayRef[DAX_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DAX::UntagResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[DAX_Tag]

The tag keys that have been removed from the cluster.


=head2 _request_id => Str


=cut

1;