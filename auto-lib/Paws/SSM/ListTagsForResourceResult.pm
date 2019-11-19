# Generated from json/callresult_class.tt

package Paws::SSM::ListTagsForResourceResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_Tag/;
  has TagList => (is => 'ro', isa => ArrayRef[SSM_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagList' => {
                              'class' => 'Paws::SSM::Tag',
                              'type' => 'ArrayRef[SSM_Tag]'
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

Paws::SSM::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[SSM_Tag]

A list of tags.


=head2 _request_id => Str


=cut

1;