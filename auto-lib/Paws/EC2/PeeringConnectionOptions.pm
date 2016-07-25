package Paws::EC2::PeeringConnectionOptions;
  use Moose;
  has AllowEgressFromLocalClassicLinkToRemoteVpc => (is => 'ro', isa => 'Bool', xmlname => 'allowEgressFromLocalClassicLinkToRemoteVpc', traits => ['Unwrapped']);
  has AllowEgressFromLocalVpcToRemoteClassicLink => (is => 'ro', isa => 'Bool', xmlname => 'allowEgressFromLocalVpcToRemoteClassicLink', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PeeringConnectionOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PeeringConnectionOptions object:

  $service_obj->Method(Att1 => { AllowEgressFromLocalClassicLinkToRemoteVpc => $value, ..., AllowEgressFromLocalVpcToRemoteClassicLink => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PeeringConnectionOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowEgressFromLocalClassicLinkToRemoteVpc

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllowEgressFromLocalClassicLinkToRemoteVpc => Bool

  If true, enables outbound communication from an EC2-Classic instance
that's linked to a local VPC via ClassicLink to instances in a peer
VPC.


=head2 AllowEgressFromLocalVpcToRemoteClassicLink => Bool

  If true, enables outbound communication from instances in a local VPC
to an EC2-Classic instance that's linked to a peer VPC via ClassicLink.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
