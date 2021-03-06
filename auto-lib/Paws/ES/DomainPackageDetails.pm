# Generated by default/object.tt
package Paws::ES::DomainPackageDetails;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has DomainPackageStatus => (is => 'ro', isa => 'Str');
  has ErrorDetails => (is => 'ro', isa => 'Paws::ES::ErrorDetails');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has PackageID => (is => 'ro', isa => 'Str');
  has PackageName => (is => 'ro', isa => 'Str');
  has PackageType => (is => 'ro', isa => 'Str');
  has PackageVersion => (is => 'ro', isa => 'Str');
  has ReferencePath => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DomainPackageDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::DomainPackageDetails object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., ReferencePath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::DomainPackageDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

Information on a package that is associated with a domain.

=head1 ATTRIBUTES


=head2 DomainName => Str

Name of the domain you've associated a package with.


=head2 DomainPackageStatus => Str

State of the association. Values are
ASSOCIATING/ASSOCIATION_FAILED/ACTIVE/DISSOCIATING/DISSOCIATION_FAILED.


=head2 ErrorDetails => L<Paws::ES::ErrorDetails>

Additional information if the package is in an error state. Null
otherwise.


=head2 LastUpdated => Str

Timestamp of the most-recent update to the association status.


=head2 PackageID => Str

Internal ID of the package.


=head2 PackageName => Str

User specified name of the package.


=head2 PackageType => Str

Currently supports only TXT-DICTIONARY.


=head2 PackageVersion => Str




=head2 ReferencePath => Str

The relative path on Amazon ES nodes, which can be used as synonym_path
when the package is synonym file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

