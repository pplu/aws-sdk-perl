# Generated from callresult_class.tt

package Paws::CloudFormation::DescribeStackInstanceOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw/CloudFormation_StackInstance/;
  has StackInstance => (is => 'ro', isa => CloudFormation_StackInstance);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StackInstance' => {
                                    'class' => 'Paws::CloudFormation::StackInstance',
                                    'type' => 'CloudFormation_StackInstance'
                                  }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackInstanceOutput

=head1 ATTRIBUTES


=head2 StackInstance => CloudFormation_StackInstance

The stack instance that matches the specified request parameters.


=head2 _request_id => Str


=cut

