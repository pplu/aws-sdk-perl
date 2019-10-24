# Generated from callresult_class.tt

package Paws::SNS::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SNS::Types qw/SNS_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[SNS_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::SNS::Tag',
                           'type' => 'ArrayRef[SNS_Tag]'
                         }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[SNS_Tag]

The tags associated with the specified topic.


=head2 _request_id => Str


=cut

