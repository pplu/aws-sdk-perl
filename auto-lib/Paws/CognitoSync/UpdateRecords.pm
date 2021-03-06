
package Paws::CognitoSync::UpdateRecords;
  use Moose;
  has ClientContext => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-Client-Context');
  has DatasetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DatasetName', required => 1);
  has DeviceId => (is => 'ro', isa => 'Str');
  has IdentityId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityId', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityPoolId', required => 1);
  has RecordPatches => (is => 'ro', isa => 'ArrayRef[Paws::CognitoSync::RecordPatch]');
  has SyncSessionToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRecords');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::UpdateRecordsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::UpdateRecords - Arguments for method UpdateRecords on L<Paws::CognitoSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRecords on the
L<Amazon Cognito Sync|Paws::CognitoSync> service. Use the attributes of this class
as arguments to method UpdateRecords.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRecords.

=head1 SYNOPSIS

    my $cognito-sync = Paws->service('CognitoSync');
    my $UpdateRecordsResponse = $cognito -sync->UpdateRecords(
      DatasetName      => 'MyDatasetName',
      IdentityId       => 'MyIdentityId',
      IdentityPoolId   => 'MyIdentityPoolId',
      SyncSessionToken => 'MySyncSessionToken',
      ClientContext    => 'MyClientContext',      # OPTIONAL
      DeviceId         => 'MyDeviceId',           # OPTIONAL
      RecordPatches    => [
        {
          Key                    => 'MyRecordKey',    # min: 1, max: 1024
          Op                     => 'replace',        # values: replace, remove
          SyncCount              => 1,
          DeviceLastModifiedDate => '1970-01-01T01:00:00',    # OPTIONAL
          Value                  => 'MyRecordValue',    # max: 1048575; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Records = $UpdateRecordsResponse->Records;

    # Returns a L<Paws::CognitoSync::UpdateRecordsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-sync/UpdateRecords>

=head1 ATTRIBUTES


=head2 ClientContext => Str

Intended to supply a device ID that will populate the lastModifiedBy
field referenced in other methods. The ClientContext field is not yet
implemented.



=head2 B<REQUIRED> DatasetName => Str

A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9,
'_' (underscore), '-' (dash), and '.' (dot).



=head2 DeviceId => Str

The unique ID generated for this device by Cognito.



=head2 B<REQUIRED> IdentityId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.



=head2 B<REQUIRED> IdentityPoolId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.



=head2 RecordPatches => ArrayRef[L<Paws::CognitoSync::RecordPatch>]

A list of patch operations.



=head2 B<REQUIRED> SyncSessionToken => Str

The SyncSessionToken returned by a previous call to ListRecords for
this dataset and identity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRecords in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

