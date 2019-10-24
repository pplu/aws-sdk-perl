# Generated from json/callresult_class.tt

package Paws::CodeDeploy::ListDeploymentsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeDeploy::Types qw//;
  has Deployments => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Deployments' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Deployments' => 'deployments'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentsOutput

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[Str|Undef]

A list of deployment IDs.


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list deployments call to
return the next set of deployments in the list.


=head2 _request_id => Str


=cut

1;