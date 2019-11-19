# Generated from json/callresult_class.tt

package Paws::CodeBuild::ListBuildsForProjectOutput;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::CodeBuild::Types qw//;
  has Ids => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Ids' => 'ids',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'Ids' => {
                          'type' => 'ArrayRef[Str|Undef]'
                        },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::CodeBuild::ListBuildsForProjectOutput

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str|Undef]

A list of build IDs for the specified build project, with each build ID
representing a single build.


=head2 NextToken => Str

If there are more than 100 items in the list, only the first 100 items
are returned, along with a unique string called a I<next token>. To get
the next batch of items in the list, call this operation again, adding
the next token to the call.


=head2 _request_id => Str


=cut

1;