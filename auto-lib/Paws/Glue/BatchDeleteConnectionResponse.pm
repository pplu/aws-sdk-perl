# Generated from json/callresult_class.tt

package Paws::Glue::BatchDeleteConnectionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw/Glue_ErrorByName/;
  has Errors => (is => 'ro', isa => Glue_ErrorByName);
  has Succeeded => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Succeeded' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Errors' => {
                             'class' => 'Paws::Glue::ErrorByName',
                             'type' => 'Glue_ErrorByName'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeleteConnectionResponse

=head1 ATTRIBUTES


=head2 Errors => Glue_ErrorByName

A map of the names of connections that were not successfully deleted to
error details.


=head2 Succeeded => ArrayRef[Str|Undef]

A list of names of the connection definitions that were successfully
deleted.


=head2 _request_id => Str


=cut

1;