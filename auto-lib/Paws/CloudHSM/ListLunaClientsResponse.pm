# Generated from json/callresult_class.tt

package Paws::CloudHSM::ListLunaClientsResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::CloudHSM::Types qw//;
  has ClientList => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ClientList' => 1
                  },
  'types' => {
               'ClientList' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ListLunaClientsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientList => ArrayRef[Str|Undef]

The list of clients.


=head2 NextToken => Str

If not null, more results are available. Pass this to
C<ListLunaClients> to retrieve the next set of items.


=head2 _request_id => Str


=cut

1;