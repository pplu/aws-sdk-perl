
package Paws::GuardDuty::ListIPSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::GuardDuty::Types qw//;
  has IpSetIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'IpSetIds' => 1
                  },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'IpSetIds' => 'ipSetIds'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IpSetIds' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListIPSetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpSetIds => ArrayRef[Str|Undef]

The IDs of the IPSet resources.


=head2 NextToken => Str

Pagination parameter to be used on the next list operation to retrieve
more items.


=head2 _request_id => Str


=cut

