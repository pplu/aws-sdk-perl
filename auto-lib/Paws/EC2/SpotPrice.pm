package Paws::EC2::SpotPrice;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has ProductDescription => (is => 'ro', isa => 'Str', request_name => 'productDescription', traits => ['NameInRequest']);
  has SpotPrice => (is => 'ro', isa => 'Str', request_name => 'spotPrice', traits => ['NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Str', request_name => 'timestamp', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotPrice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotPrice object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotPrice object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone.


=head2 InstanceType => Str

  The instance type.


=head2 ProductDescription => Str

  A general description of the AMI.


=head2 SpotPrice => Str

  The maximum price per hour that you are willing to pay for a Spot
Instance.


=head2 Timestamp => Str

  The date and time the request was created, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
