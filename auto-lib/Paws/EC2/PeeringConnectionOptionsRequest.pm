package Paws::EC2::PeeringConnectionOptionsRequest;
  use Moose;
  has AllowDnsResolutionFromRemoteVpc => (is => 'ro', isa => 'Bool');
  has AllowEgressFromLocalClassicLinkToRemoteVpc => (is => 'ro', isa => 'Bool');
  has AllowEgressFromLocalVpcToRemoteClassicLink => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PeeringConnectionOptionsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PeeringConnectionOptionsRequest object:

  $service_obj->Method(Att1 => { AllowDnsResolutionFromRemoteVpc => $value, ..., AllowEgressFromLocalVpcToRemoteClassicLink => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PeeringConnectionOptionsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowDnsResolutionFromRemoteVpc

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllowDnsResolutionFromRemoteVpc => Bool

  If true, enables a local VPC to resolve public DNS hostnames to private
IP addresses when queried from instances in the peer VPC.


=head2 AllowEgressFromLocalClassicLinkToRemoteVpc => Bool

  If true, enables outbound communication from an EC2-Classic instance
that's linked to a local VPC using ClassicLink to instances in a peer
VPC.


=head2 AllowEgressFromLocalVpcToRemoteClassicLink => Bool

  If true, enables outbound communication from instances in a local VPC
to an EC2-Classic instance that's linked to a peer VPC using
ClassicLink.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
