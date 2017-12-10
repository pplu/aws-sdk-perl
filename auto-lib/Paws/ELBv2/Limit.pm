package Paws::ELBv2::Limit;
  use Moose;
  has Max => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::Limit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::Limit object:

  $service_obj->Method(Att1 => { Max => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::Limit object:

  $result = $service_obj->Method(...);
  $result->Att1->Max

=head1 DESCRIPTION

Information about an Elastic Load Balancing resource limit for your AWS
account.

=head1 ATTRIBUTES


=head2 Max => Str

  The maximum value of the limit.


=head2 Name => Str

  The name of the limit. The possible values are:

=over

=item *

application-load-balancers

=item *

listeners-per-application-load-balancer

=item *

listeners-per-network-load-balancer

=item *

network-load-balancers

=item *

rules-per-application-load-balancer

=item *

target-groups

=item *

targets-per-application-load-balancer

=item *

targets-per-availability-zone-per-network-load-balancer

=item *

targets-per-network-load-balancer

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

