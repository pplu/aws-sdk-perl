# Generated from json/callresult_class.tt

package Paws::WorkSpaces::ListAvailableManagementCidrRangesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::WorkSpaces::Types qw//;
  has ManagementCidrRanges => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ManagementCidrRanges' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::WorkSpaces::ListAvailableManagementCidrRangesResult

=head1 ATTRIBUTES


=head2 ManagementCidrRanges => ArrayRef[Str|Undef]

The list of available IP address ranges, specified as IPv4 CIDR blocks.


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if no
more results are available.


=head2 _request_id => Str


=cut

1;