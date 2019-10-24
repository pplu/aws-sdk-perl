# Generated from json/callresult_class.tt

package Paws::Athena::BatchGetNamedQueryOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Athena::Types qw/Athena_NamedQuery Athena_UnprocessedNamedQueryId/;
  has NamedQueries => (is => 'ro', isa => ArrayRef[Athena_NamedQuery]);
  has UnprocessedNamedQueryIds => (is => 'ro', isa => ArrayRef[Athena_UnprocessedNamedQueryId]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UnprocessedNamedQueryIds' => {
                                               'class' => 'Paws::Athena::UnprocessedNamedQueryId',
                                               'type' => 'ArrayRef[Athena_UnprocessedNamedQueryId]'
                                             },
               'NamedQueries' => {
                                   'class' => 'Paws::Athena::NamedQuery',
                                   'type' => 'ArrayRef[Athena_NamedQuery]'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Athena::BatchGetNamedQueryOutput

=head1 ATTRIBUTES


=head2 NamedQueries => ArrayRef[Athena_NamedQuery]

Information about the named query IDs submitted.


=head2 UnprocessedNamedQueryIds => ArrayRef[Athena_UnprocessedNamedQueryId]

Information about provided query IDs.


=head2 _request_id => Str


=cut

1;