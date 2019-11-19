# Generated from json/callresult_class.tt

package Paws::CodeDeploy::ListDeploymentInstancesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeDeploy::Types qw//;
  has InstancesList => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstancesList' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'InstancesList' => 'instancesList',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentInstancesOutput

=head1 ATTRIBUTES


=head2 InstancesList => ArrayRef[Str|Undef]

A list of instance IDs.


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list deployment instances call
to return the next set of deployment instances in the list.


=head2 _request_id => Str


=cut

1;