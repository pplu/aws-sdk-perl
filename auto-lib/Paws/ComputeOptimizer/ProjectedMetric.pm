package Paws::ComputeOptimizer::ProjectedMetric;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Timestamps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'timestamps', traits => ['NameInRequest']);
  has Values => (is => 'ro', isa => 'ArrayRef[Num]', request_name => 'values', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::ProjectedMetric

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::ProjectedMetric object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::ProjectedMetric object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes a projected utilization metric of a recommendation option,
such as an Amazon EC2 instance.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the projected utilization metric.

Memory metrics are only returned for resources that have the unified
CloudWatch agent installed on them. For more information, see Enabling
Memory Utilization with the CloudWatch Agent
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Install-CloudWatch-Agent.html).


=head2 Timestamps => ArrayRef[Str|Undef]

  The time stamps of the projected utilization metric.


=head2 Values => ArrayRef[Num]

  The values of the projected utilization metrics.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

