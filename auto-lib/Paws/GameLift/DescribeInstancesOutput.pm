# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeInstancesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_Instance/;
  has Instances => (is => 'ro', isa => ArrayRef[GameLift_Instance]);
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
               'Instances' => {
                                'class' => 'Paws::GameLift::Instance',
                                'type' => 'ArrayRef[GameLift_Instance]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeInstancesOutput

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[GameLift_Instance]

Collection of objects containing properties for each instance returned.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;