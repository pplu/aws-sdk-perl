# Generated from callresult_class.tt

package Paws::CloudFormation::CreateStackInstancesOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has OperationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OperationId' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackInstancesOutput

=head1 ATTRIBUTES


=head2 OperationId => Str

The unique identifier for this stack set operation.


=head2 _request_id => Str


=cut

