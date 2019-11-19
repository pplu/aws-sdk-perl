package Paws::SSM::ResourceDataSyncAwsOrganizationsSource;
  use Moose;
  has OrganizationalUnits => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ResourceDataSyncOrganizationalUnit]');
  has OrganizationSourceType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResourceDataSyncAwsOrganizationsSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ResourceDataSyncAwsOrganizationsSource object:

  $service_obj->Method(Att1 => { OrganizationalUnits => $value, ..., OrganizationSourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ResourceDataSyncAwsOrganizationsSource object:

  $result = $service_obj->Method(...);
  $result->Att1->OrganizationalUnits

=head1 DESCRIPTION

Information about the AwsOrganizationsSource resource data sync source.
A sync source of this type can synchronize data from AWS Organizations
or, if an AWS Organization is not present, from multiple AWS Regions.

=head1 ATTRIBUTES


=head2 OrganizationalUnits => ArrayRef[L<Paws::SSM::ResourceDataSyncOrganizationalUnit>]

  The AWS Organizations organization units included in the sync.


=head2 B<REQUIRED> OrganizationSourceType => Str

  If an AWS Organization is present, this is either
C<OrganizationalUnits> or C<EntireOrganization>. For
C<OrganizationalUnits>, the data is aggregated from a set of
organization units. For C<EntireOrganization>, the data is aggregated
from the entire AWS Organization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

