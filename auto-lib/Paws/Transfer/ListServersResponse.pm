# Generated from json/callresult_class.tt

package Paws::Transfer::ListServersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Transfer::Types qw/Transfer_ListedServer/;
  has NextToken => (is => 'ro', isa => Str);
  has Servers => (is => 'ro', isa => ArrayRef[Transfer_ListedServer], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Servers' => {
                              'class' => 'Paws::Transfer::ListedServer',
                              'type' => 'ArrayRef[Transfer_ListedServer]'
                            }
             },
  'IsRequired' => {
                    'Servers' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListServersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When you can get additional results from the C<ListServers> operation,
a C<NextToken> parameter is returned in the output. In a following
command, you can pass in the C<NextToken> parameter to continue listing
additional servers.


=head2 B<REQUIRED> Servers => ArrayRef[Transfer_ListedServer]

An array of servers that were listed.


=head2 _request_id => Str


=cut

1;