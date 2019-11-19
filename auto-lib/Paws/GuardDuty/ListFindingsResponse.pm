
package Paws::GuardDuty::ListFindingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::GuardDuty::Types qw//;
  has FindingIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'FindingIds' => 1
                  },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'FindingIds' => 'findingIds'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FindingIds' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingIds => ArrayRef[Str|Undef]

The IDs of the findings you are listing.


=head2 NextToken => Str

Pagination parameter to be used on the next list operation to retrieve
more items.


=head2 _request_id => Str


=cut

