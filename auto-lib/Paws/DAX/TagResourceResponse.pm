# Generated from json/callresult_class.tt

package Paws::DAX::TagResourceResponse;
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
                           'type' => 'ArrayRef[DAX_Tag]',
                           'class' => 'Paws::DAX::Tag'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DAX::TagResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[DAX_Tag]

The list of tags that are associated with the DAX resource.


=head2 _request_id => Str


=cut

1;