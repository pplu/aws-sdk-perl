
package Paws::ELBv2::DescribeTargetHealth;
  use Moose;
  has TargetGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TargetDescription]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTargetHealth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeTargetHealthOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTargetHealthResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTargetHealth - Arguments for method DescribeTargetHealth on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTargetHealth on the 
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method DescribeTargetHealth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTargetHealth.

As an example:

  $service_obj->DescribeTargetHealth(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeTargetHealth>
=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetGroupArn => Str

The Amazon Resource Name (ARN) of the target group.



=head2 Targets => ArrayRef[L<Paws::ELBv2::TargetDescription>]

The targets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTargetHealth in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

