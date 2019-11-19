# Generated from json/callresult_class.tt

package Paws::DS::ListTagsForResourceResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[DS_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::DS::Tag',
                           'type' => 'ArrayRef[DS_Tag]'
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

Paws::DS::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Reserved for future use.


=head2 Tags => ArrayRef[DS_Tag]

List of tags returned by the ListTagsForResource operation.


=head2 _request_id => Str


=cut

1;