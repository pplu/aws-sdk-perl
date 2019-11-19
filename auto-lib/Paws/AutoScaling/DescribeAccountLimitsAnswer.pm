# Generated from callresult_class.tt

package Paws::AutoScaling::DescribeAccountLimitsAnswer;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AutoScaling::Types qw//;
  has MaxNumberOfAutoScalingGroups => (is => 'ro', isa => Int);
  has MaxNumberOfLaunchConfigurations => (is => 'ro', isa => Int);
  has NumberOfAutoScalingGroups => (is => 'ro', isa => Int);
  has NumberOfLaunchConfigurations => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MaxNumberOfAutoScalingGroups' => {
                                                   'type' => 'Int'
                                                 },
               'NumberOfLaunchConfigurations' => {
                                                   'type' => 'Int'
                                                 },
               'MaxNumberOfLaunchConfigurations' => {
                                                      'type' => 'Int'
                                                    },
               'NumberOfAutoScalingGroups' => {
                                                'type' => 'Int'
                                              }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeAccountLimitsAnswer

=head1 ATTRIBUTES


=head2 MaxNumberOfAutoScalingGroups => Int

The maximum number of groups allowed for your AWS account. The default
limit is 200 per AWS Region.


=head2 MaxNumberOfLaunchConfigurations => Int

The maximum number of launch configurations allowed for your AWS
account. The default limit is 200 per AWS Region.


=head2 NumberOfAutoScalingGroups => Int

The current number of groups for your AWS account.


=head2 NumberOfLaunchConfigurations => Int

The current number of launch configurations for your AWS account.


=head2 _request_id => Str


=cut

