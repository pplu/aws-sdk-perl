# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseSnapshotsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_RelationalDatabaseSnapshot/;
  has NextPageToken => (is => 'ro', isa => Str);
  has RelationalDatabaseSnapshots => (is => 'ro', isa => ArrayRef[Lightsail_RelationalDatabaseSnapshot]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RelationalDatabaseSnapshots' => {
                                                  'class' => 'Paws::Lightsail::RelationalDatabaseSnapshot',
                                                  'type' => 'ArrayRef[Lightsail_RelationalDatabaseSnapshot]'
                                                }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'RelationalDatabaseSnapshots' => 'relationalDatabaseSnapshots'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseSnapshotsResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
relational database snapshots request.


=head2 RelationalDatabaseSnapshots => ArrayRef[Lightsail_RelationalDatabaseSnapshot]

An object describing the result of your get relational database
snapshots request.


=head2 _request_id => Str


=cut

1;