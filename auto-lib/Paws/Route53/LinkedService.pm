package Paws::Route53::LinkedService;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ServicePrincipal => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::LinkedService

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::LinkedService object:

  $service_obj->Method(Att1 => { Description => $value, ..., ServicePrincipal => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::LinkedService object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

If a health check or hosted zone was created by another service,
C<LinkedService> is a complex type that describes the service that
created the resource. When a resource is created by another service,
you can't edit or delete it using Amazon Route 53.

=head1 ATTRIBUTES


=head2 Description => Str

  If the health check or hosted zone was created by another service, an
optional description that can be provided by the other service. When a
resource is created by another service, you can't edit or delete it
using Amazon Route 53.


=head2 ServicePrincipal => Str

  If the health check or hosted zone was created by another service, the
service that created the resource. When a resource is created by
another service, you can't edit or delete it using Amazon Route 53.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

