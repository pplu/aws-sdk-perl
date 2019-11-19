
package Paws::CognitoSync::ListIdentityPoolUsageResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::CognitoSync::Types qw/CognitoSync_IdentityPoolUsage/;
  has Count => (is => 'ro', isa => Int);
  has IdentityPoolUsages => (is => 'ro', isa => ArrayRef[CognitoSync_IdentityPoolUsage]);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'IdentityPoolUsages' => {
                                         'class' => 'Paws::CognitoSync::IdentityPoolUsage',
                                         'type' => 'ArrayRef[CognitoSync_IdentityPoolUsage]'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Count' => {
                            'type' => 'Int'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::ListIdentityPoolUsageResponse

=head1 ATTRIBUTES


=head2 Count => Int

Total number of identities for the identity pool.


=head2 IdentityPoolUsages => ArrayRef[CognitoSync_IdentityPoolUsage]

Usage information for the identity pools.


=head2 MaxResults => Int

The maximum number of results to be returned.


=head2 NextToken => Str

A pagination token for obtaining the next page of results.


=head2 _request_id => Str


=cut

