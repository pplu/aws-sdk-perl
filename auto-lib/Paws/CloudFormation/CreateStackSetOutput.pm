# Generated from callresult_class.tt

package Paws::CloudFormation::CreateStackSetOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has StackSetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StackSetId' => {
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

Paws::CloudFormation::CreateStackSetOutput

=head1 ATTRIBUTES


=head2 StackSetId => Str

The ID of the stack set that you're creating.


=head2 _request_id => Str


=cut

