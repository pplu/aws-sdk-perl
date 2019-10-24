# Generated from json/callresult_class.tt

package Paws::Glue::BatchDeleteTableVersionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_TableVersionError/;
  has Errors => (is => 'ro', isa => ArrayRef[Glue_TableVersionError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Errors' => {
                             'class' => 'Paws::Glue::TableVersionError',
                             'type' => 'ArrayRef[Glue_TableVersionError]'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeleteTableVersionResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[Glue_TableVersionError]

A list of errors encountered while trying to delete the specified table
versions.


=head2 _request_id => Str


=cut

1;