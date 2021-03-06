# Generated by default/object.tt
package Paws::ManagedBlockchain::MemberFabricLogPublishingConfiguration;
  use Moose;
  has CaLogs => (is => 'ro', isa => 'Paws::ManagedBlockchain::LogConfigurations');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::MemberFabricLogPublishingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::MemberFabricLogPublishingConfiguration object:

  $service_obj->Method(Att1 => { CaLogs => $value, ..., CaLogs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::MemberFabricLogPublishingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CaLogs

=head1 DESCRIPTION

Configuration properties for logging events associated with a member of
a Managed Blockchain network using the Hyperledger Fabric framework.

=head1 ATTRIBUTES


=head2 CaLogs => L<Paws::ManagedBlockchain::LogConfigurations>

Configuration properties for logging events associated with a member's
Certificate Authority (CA). CA logs help you determine when a member in
your account joins the network, or when new peers register with a
member CA.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

