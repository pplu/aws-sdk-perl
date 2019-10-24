# Generated from json/callresult_class.tt

package Paws::Athena::ListTagsForResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Athena::Types qw/Athena_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Athena_Tag]);

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
               'Tags' => {
                           'class' => 'Paws::Athena::Tag',
                           'type' => 'ArrayRef[Athena_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Athena::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to be used by the next request if this request is truncated.


=head2 Tags => ArrayRef[Athena_Tag]

The list of tags associated with this workgroup.


=head2 _request_id => Str


=cut

1;