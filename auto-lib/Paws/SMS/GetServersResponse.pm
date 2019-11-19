# Generated from json/callresult_class.tt

package Paws::SMS::GetServersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_Server/;
  has LastModifiedOn => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has ServerCatalogStatus => (is => 'ro', isa => Str);
  has ServerList => (is => 'ro', isa => ArrayRef[SMS_Server]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'LastModifiedOn' => 'lastModifiedOn',
                       'ServerList' => 'serverList',
                       'ServerCatalogStatus' => 'serverCatalogStatus'
                     },
  'types' => {
               'LastModifiedOn' => {
                                     'type' => 'Str'
                                   },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ServerCatalogStatus' => {
                                          'type' => 'Str'
                                        },
               'ServerList' => {
                                 'class' => 'Paws::SMS::Server',
                                 'type' => 'ArrayRef[SMS_Server]'
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

Paws::SMS::GetServersResponse

=head1 ATTRIBUTES


=head2 LastModifiedOn => Str

The time when the server was last modified.


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null when there are no more results to return.


=head2 ServerCatalogStatus => Str

The status of the server catalog.

Valid values are: C<"NOT_IMPORTED">, C<"IMPORTING">, C<"AVAILABLE">, C<"DELETED">, C<"EXPIRED">
=head2 ServerList => ArrayRef[SMS_Server]

Information about the servers.


=head2 _request_id => Str


=cut

1;