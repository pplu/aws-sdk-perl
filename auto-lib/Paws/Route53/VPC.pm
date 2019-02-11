package Paws::Route53::VPC;
  use Moose;
  has VPCId => (is => 'ro', isa => 'Str');
  has VPCRegion => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::VPC

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::VPC object:

  $service_obj->Method(Att1 => { VPCId => $value, ..., VPCRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::VPC object:

  $result = $service_obj->Method(...);
  $result->Att1->VPCId

=head1 DESCRIPTION

(Private hosted zones only) A complex type that contains information
about an Amazon VPC.

=head1 ATTRIBUTES


=head2 VPCId => Str

  


=head2 VPCRegion => Str

  (Private hosted zones only) The region that an Amazon VPC was created
in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

