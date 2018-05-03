package Paws::EC2::TargetCapacitySpecificationRequest;
  use Moose;
  has DefaultTargetCapacityType => (is => 'ro', isa => 'Str');
  has OnDemandTargetCapacity => (is => 'ro', isa => 'Int');
  has SpotTargetCapacity => (is => 'ro', isa => 'Int');
  has TotalTargetCapacity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TargetCapacitySpecificationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TargetCapacitySpecificationRequest object:

  $service_obj->Method(Att1 => { DefaultTargetCapacityType => $value, ..., TotalTargetCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TargetCapacitySpecificationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultTargetCapacityType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DefaultTargetCapacityType => Str

  The default C<TotalTargetCapacity>, which is either C<Spot> or
C<On-Demand>.


=head2 OnDemandTargetCapacity => Int

  The number of On-Demand units to request.


=head2 SpotTargetCapacity => Int

  The number of Spot units to request.


=head2 B<REQUIRED> TotalTargetCapacity => Int

  The number of units to request, filled using
C<DefaultTargetCapacityType>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
