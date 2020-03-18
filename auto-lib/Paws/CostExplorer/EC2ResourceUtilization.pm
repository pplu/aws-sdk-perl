package Paws::CostExplorer::EC2ResourceUtilization;
  use Moose;
  has MaxCpuUtilizationPercentage => (is => 'ro', isa => 'Str');
  has MaxMemoryUtilizationPercentage => (is => 'ro', isa => 'Str');
  has MaxStorageUtilizationPercentage => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::EC2ResourceUtilization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::EC2ResourceUtilization object:

  $service_obj->Method(Att1 => { MaxCpuUtilizationPercentage => $value, ..., MaxStorageUtilizationPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::EC2ResourceUtilization object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxCpuUtilizationPercentage

=head1 DESCRIPTION

Utilization metrics of the instance.

=head1 ATTRIBUTES


=head2 MaxCpuUtilizationPercentage => Str

  Maximum observed or expected CPU utilization of the instance.


=head2 MaxMemoryUtilizationPercentage => Str

  Maximum observed or expected memory utilization of the instance.


=head2 MaxStorageUtilizationPercentage => Str

  Maximum observed or expected storage utilization of the instance (does
not measure EBS storage).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

