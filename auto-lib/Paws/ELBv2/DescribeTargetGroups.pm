
package Paws::ELBv2::DescribeTargetGroups;
  use Moose;
  has LoadBalancerArn => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PageSize => (is => 'ro', isa => 'Int');
  has TargetGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTargetGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeTargetGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTargetGroupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTargetGroups - Arguments for method DescribeTargetGroups on Paws::ELBv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTargetGroups on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method DescribeTargetGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTargetGroups.

As an example:

  $service_obj->DescribeTargetGroups(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.



=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)



=head2 Names => ArrayRef[Str|Undef]

The names of the target groups.



=head2 PageSize => Int

The maximum number of results to return with this call.



=head2 TargetGroupArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the target groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTargetGroups in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

