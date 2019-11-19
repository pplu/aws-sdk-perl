
package Paws::CognitoSync::DescribeIdentityPoolUsageResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoSync::Types qw/CognitoSync_IdentityPoolUsage/;
  has IdentityPoolUsage => (is => 'ro', isa => CognitoSync_IdentityPoolUsage);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IdentityPoolUsage' => {
                                        'type' => 'CognitoSync_IdentityPoolUsage',
                                        'class' => 'Paws::CognitoSync::IdentityPoolUsage'
                                      }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::DescribeIdentityPoolUsageResponse

=head1 ATTRIBUTES


=head2 IdentityPoolUsage => CognitoSync_IdentityPoolUsage

Information about the usage of the identity pool.


=head2 _request_id => Str


=cut

