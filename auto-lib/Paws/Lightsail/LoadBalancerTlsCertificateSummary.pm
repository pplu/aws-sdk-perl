package Paws::Lightsail::LoadBalancerTlsCertificateSummary;
  use Moose;
  has IsAttached => (is => 'ro', isa => 'Bool', request_name => 'isAttached', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::LoadBalancerTlsCertificateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::LoadBalancerTlsCertificateSummary object:

  $service_obj->Method(Att1 => { IsAttached => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::LoadBalancerTlsCertificateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->IsAttached

=head1 DESCRIPTION

Provides a summary of SSL/TLS certificate metadata.

=head1 ATTRIBUTES


=head2 IsAttached => Bool

  When C<true>, the SSL/TLS certificate is attached to the Lightsail load
balancer.


=head2 Name => Str

  The name of the SSL/TLS certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

