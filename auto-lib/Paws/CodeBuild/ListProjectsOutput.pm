# Generated from json/callresult_class.tt

package Paws::CodeBuild::ListProjectsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeBuild::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has Projects => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Projects' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Projects' => 'projects',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListProjectsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more than 100 items in the list, only the first 100 items
are returned, along with a unique string called a I<next token>. To get
the next batch of items in the list, call this operation again, adding
the next token to the call.


=head2 Projects => ArrayRef[Str|Undef]

The list of build project names, with each build project name
representing a single build project.


=head2 _request_id => Str


=cut

1;