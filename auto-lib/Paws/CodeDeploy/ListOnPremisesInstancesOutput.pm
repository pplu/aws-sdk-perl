# Generated from json/callresult_class.tt

package Paws::CodeDeploy::ListOnPremisesInstancesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeDeploy::Types qw//;
  has InstanceNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

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
               'InstanceNames' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'InstanceNames' => 'instanceNames'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListOnPremisesInstancesOutput

=head1 ATTRIBUTES


=head2 InstanceNames => ArrayRef[Str|Undef]

The list of matching on-premises instance names.


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list on-premises instances
call to return the next set of on-premises instances in the list.


=head2 _request_id => Str


=cut

1;