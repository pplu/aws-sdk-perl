# Generated by default/object.tt
package Paws::Lightsail::ContainerServiceStateDetail;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::ContainerServiceStateDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::ContainerServiceStateDetail object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::ContainerServiceStateDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Describes the current state of a container service.

=head1 ATTRIBUTES


=head2 Code => Str

The state code of the container service.

The following state codes are possible:

=over

=item *

The following state codes are possible if your container service is in
a C<DEPLOYING> or C<UPDATING> state:

=over

=item *

C<CREATING_SYSTEM_RESOURCES> - The system resources for your container
service are being created.

=item *

C<CREATING_NETWORK_INFRASTRUCTURE> - The network infrastructure for
your container service are being created.

=item *

C<PROVISIONING_CERTIFICATE> - The SSL/TLS certificate for your
container service is being created.

=item *

C<PROVISIONING_SERVICE> - Your container service is being provisioned.

=item *

C<CREATING_DEPLOYMENT> - Your deployment is being created on your
container service.

=item *

C<EVALUATING_HEALTH_CHECK> - The health of your deployment is being
evaluated.

=item *

C<ACTIVATING_DEPLOYMENT> - Your deployment is being activated.

=back

=item *

The following state codes are possible if your container service is in
a C<PENDING> state:

=over

=item *

C<CERTIFICATE_LIMIT_EXCEEDED> - The SSL/TLS certificate required for
your container service exceeds the maximum number of certificates
allowed for your account.

=item *

C<UNKNOWN_ERROR> - An error was experienced when your container service
was being created.

=back

=back



=head2 Message => Str

A message that provides more information for the state code.

The state detail is populated only when a container service is in a
C<PENDING>, C<DEPLOYING>, or C<UPDATING> state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

