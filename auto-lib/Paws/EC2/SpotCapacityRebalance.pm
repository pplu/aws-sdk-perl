package Paws::EC2::SpotCapacityRebalance;
  use Moose;
  has ReplacementStrategy => (is => 'ro', isa => 'Str', request_name => 'replacementStrategy', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotCapacityRebalance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotCapacityRebalance object:

  $service_obj->Method(Att1 => { ReplacementStrategy => $value, ..., ReplacementStrategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotCapacityRebalance object:

  $result = $service_obj->Method(...);
  $result->Att1->ReplacementStrategy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ReplacementStrategy => Str

The replacement strategy to use. Only available for fleets of type
C<maintain>. You must specify a value, otherwise you get an error.

To allow Spot Fleet to launch a replacement Spot Instance when an
instance rebalance notification is emitted for a Spot Instance in the
fleet, specify C<launch>.

When a replacement instance is launched, the instance marked for
rebalance is not automatically terminated. You can terminate it, or you
can leave it running. You are charged for all instances while they are
running.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
