package Paws::ServiceCatalog::ServiceActionAssociation;
  use Moose;
  has ProductId => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str', required => 1);
  has ServiceActionId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ServiceActionAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ServiceActionAssociation object:

  $service_obj->Method(Att1 => { ProductId => $value, ..., ServiceActionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ServiceActionAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->ProductId

=head1 DESCRIPTION

A self-service action association consisting of the Action ID, the
Product ID, and the Provisioning Artifact ID.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProductId => Str

  The product identifier. For example, C<prod-abcdzk7xy33qa>.


=head2 B<REQUIRED> ProvisioningArtifactId => Str

  The identifier of the provisioning artifact. For example,
C<pa-4abcdjnxjj6ne>.


=head2 B<REQUIRED> ServiceActionId => Str

  The self-service action identifier. For example, C<act-fs7abcd89wxyz>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

