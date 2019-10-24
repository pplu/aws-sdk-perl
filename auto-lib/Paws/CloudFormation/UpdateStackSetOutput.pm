# Generated from callresult_class.tt

package Paws::CloudFormation::UpdateStackSetOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has OperationId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OperationId' => {
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

Paws::CloudFormation::UpdateStackSetOutput

=head1 ATTRIBUTES


=head2 OperationId => Str

The unique ID for this stack set operation.


=head2 _request_id => Str


=cut

