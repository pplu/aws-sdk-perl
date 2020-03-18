package Paws::CostExplorer::EC2ResourceDetails;
  use Moose;
  has HourlyOnDemandRate => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has Memory => (is => 'ro', isa => 'Str');
  has NetworkPerformance => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
  has Sku => (is => 'ro', isa => 'Str');
  has Storage => (is => 'ro', isa => 'Str');
  has Vcpu => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::EC2ResourceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::EC2ResourceDetails object:

  $service_obj->Method(Att1 => { HourlyOnDemandRate => $value, ..., Vcpu => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::EC2ResourceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->HourlyOnDemandRate

=head1 DESCRIPTION

Details on the Amazon EC2 Resource.

=head1 ATTRIBUTES


=head2 HourlyOnDemandRate => Str

  Hourly public On Demand rate for the instance type.


=head2 InstanceType => Str

  The type of Amazon Web Services instance.


=head2 Memory => Str

  Memory capacity of Amazon Web Services instance.


=head2 NetworkPerformance => Str

  Network performance capacity of the Amazon Web Services instance.


=head2 Platform => Str

  The platform of the Amazon Web Services instance. The platform is the
specific combination of operating system, license model, and software
on an instance.


=head2 Region => Str

  The Amazon Web Services Region of the instance.


=head2 Sku => Str

  The SKU of the product.


=head2 Storage => Str

  The disk storage of the Amazon Web Services instance (Not EBS storage).


=head2 Vcpu => Str

  Number of VCPU cores in the Amazon Web Services instance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

