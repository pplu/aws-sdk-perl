# Generated from json/callresult_class.tt

package Paws::CodeDeploy::ListGitHubAccountTokenNamesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeDeploy::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has TokenNameList => (is => 'ro', isa => ArrayRef[Str|Undef]);

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
               'TokenNameList' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TokenNameList' => 'tokenNameList'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListGitHubAccountTokenNamesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent ListGitHubAccountTokenNames
call to return the next set of names in the list.


=head2 TokenNameList => ArrayRef[Str|Undef]

A list of names of connections to GitHub accounts.


=head2 _request_id => Str


=cut

1;