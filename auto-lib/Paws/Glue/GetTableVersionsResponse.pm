# Generated from json/callresult_class.tt

package Paws::Glue::GetTableVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_TableVersion/;
  has NextToken => (is => 'ro', isa => Str);
  has TableVersions => (is => 'ro', isa => ArrayRef[Glue_TableVersion]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'TableVersions' => {
                                    'class' => 'Paws::Glue::TableVersion',
                                    'type' => 'ArrayRef[Glue_TableVersion]'
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

Paws::Glue::GetTableVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if the list of available versions does not
include the last one.


=head2 TableVersions => ArrayRef[Glue_TableVersion]

A list of strings identifying available versions of the specified
table.


=head2 _request_id => Str


=cut

1;