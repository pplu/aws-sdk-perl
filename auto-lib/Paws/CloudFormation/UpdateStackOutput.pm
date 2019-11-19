# Generated from callresult_class.tt

package Paws::CloudFormation::UpdateStackOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has StackId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StackId' => {
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

Paws::CloudFormation::UpdateStackOutput

=head1 ATTRIBUTES


=head2 StackId => Str

Unique identifier of the stack.


=head2 _request_id => Str


=cut

