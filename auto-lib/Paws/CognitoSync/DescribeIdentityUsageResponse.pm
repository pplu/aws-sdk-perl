
package Paws::CognitoSync::DescribeIdentityUsageResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoSync::Types qw/CognitoSync_IdentityUsage/;
  has IdentityUsage => (is => 'ro', isa => CognitoSync_IdentityUsage);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IdentityUsage' => {
                                    'class' => 'Paws::CognitoSync::IdentityUsage',
                                    'type' => 'CognitoSync_IdentityUsage'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::DescribeIdentityUsageResponse

=head1 ATTRIBUTES


=head2 IdentityUsage => CognitoSync_IdentityUsage

Usage information for the identity.


=head2 _request_id => Str


=cut

