
package Paws::IoT::ListSecurityProfilesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_SecurityProfileIdentifier/;
  has NextToken => (is => 'ro', isa => Str);
  has SecurityProfileIdentifiers => (is => 'ro', isa => ArrayRef[IoT_SecurityProfileIdentifier]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SecurityProfileIdentifiers' => {
                                                 'class' => 'Paws::IoT::SecurityProfileIdentifier',
                                                 'type' => 'ArrayRef[IoT_SecurityProfileIdentifier]'
                                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SecurityProfileIdentifiers' => 'securityProfileIdentifiers',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListSecurityProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 SecurityProfileIdentifiers => ArrayRef[IoT_SecurityProfileIdentifier]

A list of security profile identifiers (names and ARNs).


=head2 _request_id => Str


=cut

