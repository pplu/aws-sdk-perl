package Paws::LicenseManager::LicenseConfigurationAssociation;
  use Moose;
  has AssociationTime => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceOwnerId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::LicenseConfigurationAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManager::LicenseConfigurationAssociation object:

  $service_obj->Method(Att1 => { AssociationTime => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManager::LicenseConfigurationAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationTime

=head1 DESCRIPTION

Describes a server resource that is associated with a license
configuration.

=head1 ATTRIBUTES


=head2 AssociationTime => Str

  Time when the license configuration was associated with the resource.


=head2 ResourceArn => Str

  ARN of the resource associated with the license configuration.


=head2 ResourceOwnerId => Str

  ID of the AWS account that owns the resource consuming licenses.


=head2 ResourceType => Str

  Type of server resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

