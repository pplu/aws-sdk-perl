
package Paws::PinpointEmail::ListConfigurationSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::PinpointEmail::Types qw//;
  has ConfigurationSets => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ConfigurationSets' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               '_request_id' => {
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

Paws::PinpointEmail::ListConfigurationSetsResponse

=head1 ATTRIBUTES


=head2 ConfigurationSets => ArrayRef[Str|Undef]

An array that contains all of the configuration sets in your Amazon
Pinpoint account in the current AWS Region.


=head2 NextToken => Str

A token that indicates that there are additional configuration sets to
list. To view additional configuration sets, issue another request to
C<ListConfigurationSets>, and pass this token in the C<NextToken>
parameter.


=head2 _request_id => Str


=cut

