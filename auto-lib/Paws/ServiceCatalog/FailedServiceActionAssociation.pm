package Paws::ServiceCatalog::FailedServiceActionAssociation;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str');
  has ServiceActionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::FailedServiceActionAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::FailedServiceActionAssociation object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., ServiceActionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::FailedServiceActionAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

An object containing information about the error, along with
identifying information about the self-service action and its
associations.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code. Valid values are listed below.


=head2 ErrorMessage => Str

  A text description of the error.


=head2 ProductId => Str

  The product identifier. For example, C<prod-abcdzk7xy33qa>.


=head2 ProvisioningArtifactId => Str

  The identifier of the provisioning artifact. For example,
C<pa-4abcdjnxjj6ne>.


=head2 ServiceActionId => Str

  The self-service action identifier. For example, C<act-fs7abcd89wxyz>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

