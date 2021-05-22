
package Paws::SSM::CreateResourceDataSync;
  use Moose;
  has S3Destination => (is => 'ro', isa => 'Paws::SSM::ResourceDataSyncS3Destination');
  has SyncName => (is => 'ro', isa => 'Str', required => 1);
  has SyncSource => (is => 'ro', isa => 'Paws::SSM::ResourceDataSyncSource');
  has SyncType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceDataSync');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateResourceDataSyncResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateResourceDataSync - Arguments for method CreateResourceDataSync on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceDataSync on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateResourceDataSync.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceDataSync.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateResourceDataSyncResult = $ssm->CreateResourceDataSync(
      SyncName      => 'MyResourceDataSyncName',
      S3Destination => {
        BucketName => 'MyResourceDataSyncS3BucketName',    # min: 1, max: 2048
        Region     => 'MyResourceDataSyncS3Region',        # min: 1, max: 64
        SyncFormat => 'JsonSerDe',                         # values: JsonSerDe
        AWSKMSKeyARN =>
          'MyResourceDataSyncAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL
        DestinationDataSharing => {
          DestinationDataSharingType =>
            'MyResourceDataSyncDestinationDataSharingType'
          ,                                    # min: 1, max: 64; OPTIONAL
        },    # OPTIONAL
        Prefix => 'MyResourceDataSyncS3Prefix',    # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
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
        EnableAllOpsDataSources => 1,    # OPTIONAL
        IncludeFutureRegions    => 1,    # OPTIONAL
      },    # OPTIONAL
      SyncType => 'MyResourceDataSyncType',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateResourceDataSync>

=head1 ATTRIBUTES


=head2 S3Destination => L<Paws::SSM::ResourceDataSyncS3Destination>

Amazon S3 configuration details for the sync. This parameter is
required if the C<SyncType> value is SyncToDestination.



=head2 B<REQUIRED> SyncName => Str

A name for the configuration.



=head2 SyncSource => L<Paws::SSM::ResourceDataSyncSource>

Specify information about the data sources to synchronize. This
parameter is required if the C<SyncType> value is SyncFromSource.



=head2 SyncType => Str

Specify C<SyncToDestination> to create a resource data sync that
synchronizes data to an S3 bucket for Inventory. If you specify
C<SyncToDestination>, you must provide a value for C<S3Destination>.
Specify C<SyncFromSource> to synchronize data from a single account and
multiple Regions, or multiple AWS accounts and Regions, as listed in
AWS Organizations for Explorer. If you specify C<SyncFromSource>, you
must provide a value for C<SyncSource>. The default value is
C<SyncToDestination>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceDataSync in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

