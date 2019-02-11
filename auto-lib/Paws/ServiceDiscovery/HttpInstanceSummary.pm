package Paws::ServiceDiscovery::HttpInstanceSummary;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::ServiceDiscovery::Attributes');
  has HealthStatus => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has NamespaceName => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::HttpInstanceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::HttpInstanceSummary object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::HttpInstanceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

In a response to a DiscoverInstance request, C<HttpInstanceSummary>
contains information about one instance that matches the values that
you specified in the request.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::ServiceDiscovery::Attributes>

  If you included any attributes when you registered the instance, the
values of those attributes.


=head2 HealthStatus => Str

  If you configured health checking in the service, the current health
status of the service instance.


=head2 InstanceId => Str

  The ID of an instance that matches the values that you specified in the
request.


=head2 NamespaceName => Str

  The name of the namespace that you specified when you registered the
instance.


=head2 ServiceName => Str

  The name of the service that you specified when you registered the
instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

