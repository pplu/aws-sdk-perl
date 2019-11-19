# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabasesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_RelationalDatabase/;
  has NextPageToken => (is => 'ro', isa => Str);
  has RelationalDatabases => (is => 'ro', isa => ArrayRef[Lightsail_RelationalDatabase]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RelationalDatabases' => {
                                          'class' => 'Paws::Lightsail::RelationalDatabase',
                                          'type' => 'ArrayRef[Lightsail_RelationalDatabase]'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'RelationalDatabases' => 'relationalDatabases'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabasesResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
relational databases request.


=head2 RelationalDatabases => ArrayRef[Lightsail_RelationalDatabase]

An object describing the result of your get relational databases
request.


=head2 _request_id => Str


=cut

1;