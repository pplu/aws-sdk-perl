# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeInstancesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_Instance/;
  has Instances => (is => 'ro', isa => ArrayRef[OpsWorks_Instance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Instances' => {
                                'class' => 'Paws::OpsWorks::Instance',
                                'type' => 'ArrayRef[OpsWorks_Instance]'
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

Paws::OpsWorks::DescribeInstancesResult

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[OpsWorks_Instance]

An array of C<Instance> objects that describe the instances.


=head2 _request_id => Str


=cut

1;