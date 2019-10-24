# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeStacksResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_Stack/;
  has Stacks => (is => 'ro', isa => ArrayRef[OpsWorks_Stack]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Stacks' => {
                             'class' => 'Paws::OpsWorks::Stack',
                             'type' => 'ArrayRef[OpsWorks_Stack]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeStacksResult

=head1 ATTRIBUTES


=head2 Stacks => ArrayRef[OpsWorks_Stack]

An array of C<Stack> objects that describe the stacks.


=head2 _request_id => Str


=cut

1;