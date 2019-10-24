# Generated from json/callresult_class.tt

package Paws::Athena::ListNamedQueriesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Athena::Types qw//;
  has NamedQueryIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'NamedQueryIds' => {
                                    'type' => 'ArrayRef[Str|Undef]'
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

Paws::Athena::ListNamedQueriesOutput

=head1 ATTRIBUTES


=head2 NamedQueryIds => ArrayRef[Str|Undef]

The list of unique query IDs.


=head2 NextToken => Str

A token to be used by the next request if this request is truncated.


=head2 _request_id => Str


=cut

1;