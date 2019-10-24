# Generated from json/callresult_class.tt

package Paws::Glue::BatchDeleteTableResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_TableError/;
  has Errors => (is => 'ro', isa => ArrayRef[Glue_TableError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Errors' => {
                             'class' => 'Paws::Glue::TableError',
                             'type' => 'ArrayRef[Glue_TableError]'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeleteTableResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[Glue_TableError]

A list of errors encountered in attempting to delete the specified
tables.


=head2 _request_id => Str


=cut

1;