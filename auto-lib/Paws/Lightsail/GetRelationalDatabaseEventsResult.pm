# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseEventsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_RelationalDatabaseEvent/;
  has NextPageToken => (is => 'ro', isa => Str);
  has RelationalDatabaseEvents => (is => 'ro', isa => ArrayRef[Lightsail_RelationalDatabaseEvent]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RelationalDatabaseEvents' => 'relationalDatabaseEvents',
                       'NextPageToken' => 'nextPageToken'
                     },
  'types' => {
               'RelationalDatabaseEvents' => {
                                               'class' => 'Paws::Lightsail::RelationalDatabaseEvent',
                                               'type' => 'ArrayRef[Lightsail_RelationalDatabaseEvent]'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseEventsResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
relational database events request.


=head2 RelationalDatabaseEvents => ArrayRef[Lightsail_RelationalDatabaseEvent]

An object describing the result of your get relational database events
request.


=head2 _request_id => Str


=cut

1;