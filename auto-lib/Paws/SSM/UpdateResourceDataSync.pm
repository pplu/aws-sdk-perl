
package Paws::SSM::UpdateResourceDataSync;
  use Moose;
  has SyncName => (is => 'ro', isa => 'Str', required => 1);
  has SyncSource => (is => 'ro', isa => 'Paws::SSM::ResourceDataSyncSource', required => 1);
  has SyncType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResourceDataSync');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateResourceDataSyncResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateResourceDataSync - Arguments for method UpdateResourceDataSync on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResourceDataSync on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateResourceDataSync.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResourceDataSync.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateResourceDataSyncResult = $ssm->UpdateResourceDataSync(
      SyncName   => 'MyResourceDataSyncName',
      SyncSource => {
        SourceRegions => [
          'MyResourceDataSyncSourceRegion', ...    # min: 1, max: 64
        ],
        SourceType => 'MyResourceDataSyncSourceType',    # min: 1, max: 64
        AwsOrganizationsSource => {
          OrganizationSourceType =>
            'MyResourceDataSyncOrganizationSourceType',    # min: 1, max: 64
          OrganizationalUnits => [
            {
              OrganizationalUnitId => 'MyResourceDataSyncOrganizationalUnitId'
              ,    # min: 1, max: 128; OPTIONAL
            },
            ...
          ],       # min: 1, max: 1000; OPTIONAL
        },    # OPTIONAL
        IncludeFutureRegions => 1,    # OPTIONAL
      },
      SyncType => 'MyResourceDataSyncType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateResourceDataSync>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SyncName => Str

The name of the resource data sync you want to update.



=head2 B<REQUIRED> SyncSource => L<Paws::SSM::ResourceDataSyncSource>

Specify information about the data sources to synchronize.



=head2 B<REQUIRED> SyncType => Str

The type of resource data sync. If C<SyncType> is C<SyncToDestination>,
then the resource data sync synchronizes data to an Amazon S3 bucket.
If the C<SyncType> is C<SyncFromSource> then the resource data sync
synchronizes data from AWS Organizations or from multiple AWS Regions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResourceDataSync in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

