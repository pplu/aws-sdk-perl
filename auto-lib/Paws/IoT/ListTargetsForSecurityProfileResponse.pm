
package Paws::IoT::ListTargetsForSecurityProfileResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_SecurityProfileTarget/;
  has NextToken => (is => 'ro', isa => Str);
  has SecurityProfileTargets => (is => 'ro', isa => ArrayRef[IoT_SecurityProfileTarget]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SecurityProfileTargets' => {
                                             'type' => 'ArrayRef[IoT_SecurityProfileTarget]',
                                             'class' => 'Paws::IoT::SecurityProfileTarget'
                                           },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'SecurityProfileTargets' => 'securityProfileTargets',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTargetsForSecurityProfileResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 SecurityProfileTargets => ArrayRef[IoT_SecurityProfileTarget]

The thing groups to which the security profile is attached.


=head2 _request_id => Str


=cut

