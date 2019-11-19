
package Paws::IoT::ListSecurityProfilesForTargetResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_SecurityProfileTargetMapping/;
  has NextToken => (is => 'ro', isa => Str);
  has SecurityProfileTargetMappings => (is => 'ro', isa => ArrayRef[IoT_SecurityProfileTargetMapping]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SecurityProfileTargetMappings' => {
                                                    'type' => 'ArrayRef[IoT_SecurityProfileTargetMapping]',
                                                    'class' => 'Paws::IoT::SecurityProfileTargetMapping'
                                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SecurityProfileTargetMappings' => 'securityProfileTargetMappings',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListSecurityProfilesForTargetResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 SecurityProfileTargetMappings => ArrayRef[IoT_SecurityProfileTargetMapping]

A list of security profiles and their associated targets.


=head2 _request_id => Str


=cut

