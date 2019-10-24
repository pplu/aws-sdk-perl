
package Paws::GuardDuty::ListThreatIntelSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::GuardDuty::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has ThreatIntelSetIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

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
               'ThreatIntelSetIds' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ThreatIntelSetIds' => 'threatIntelSetIds'
                     },
  'IsRequired' => {
                    'ThreatIntelSetIds' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListThreatIntelSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination parameter to be used on the next list operation to retrieve
more items.


=head2 B<REQUIRED> ThreatIntelSetIds => ArrayRef[Str|Undef]

The IDs of the ThreatIntelSet resources.


=head2 _request_id => Str


=cut

