# Generated from json/callargs_class.tt

package Paws::SMS::CreateReplicationJob;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::SMS::Types qw//;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Encrypted => (is => 'ro', isa => Bool, predicate => 1);
  has Frequency => (is => 'ro', isa => Int, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has LicenseType => (is => 'ro', isa => Str, predicate => 1);
  has NumberOfRecentAmisToKeep => (is => 'ro', isa => Int, predicate => 1);
  has RoleName => (is => 'ro', isa => Str, predicate => 1);
  has RunOnce => (is => 'ro', isa => Bool, predicate => 1);
  has SeedReplicationTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ServerId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateReplicationJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SMS::CreateReplicationJobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Frequency' => {
                                'type' => 'Int'
                              },
               'RunOnce' => {
                              'type' => 'Bool'
                            },
               'NumberOfRecentAmisToKeep' => {
                                               'type' => 'Int'
                                             },
               'LicenseType' => {
                                  'type' => 'Str'
                                },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'ServerId' => {
                               'type' => 'Str'
                             },
               'SeedReplicationTime' => {
                                          'type' => 'Str'
                                        },
               'RoleName' => {
                               'type' => 'Str'
                             },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Frequency' => 'frequency',
                       'RunOnce' => 'runOnce',
                       'NumberOfRecentAmisToKeep' => 'numberOfRecentAmisToKeep',
                       'LicenseType' => 'licenseType',
                       'KmsKeyId' => 'kmsKeyId',
                       'Encrypted' => 'encrypted',
                       'ServerId' => 'serverId',
                       'SeedReplicationTime' => 'seedReplicationTime',
                       'RoleName' => 'roleName',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'ServerId' => 1,
                    'SeedReplicationTime' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::CreateReplicationJob - Arguments for method CreateReplicationJob on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationJob on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method CreateReplicationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationJob.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $CreateReplicationJobResponse = $sms->CreateReplicationJob(
      SeedReplicationTime      => '1970-01-01T01:00:00',
      ServerId                 => 'MyServerId',
      Description              => 'MyDescription',         # OPTIONAL
      Encrypted                => 1,                       # OPTIONAL
      Frequency                => 1,                       # OPTIONAL
      KmsKeyId                 => 'MyKmsKeyId',            # OPTIONAL
      LicenseType              => 'AWS',                   # OPTIONAL
      NumberOfRecentAmisToKeep => 1,                       # OPTIONAL
      RoleName                 => 'MyRoleName',            # OPTIONAL
      RunOnce                  => 1,                       # OPTIONAL
    );

    # Results:
    my $ReplicationJobId = $CreateReplicationJobResponse->ReplicationJobId;

    # Returns a L<Paws::SMS::CreateReplicationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/CreateReplicationJob>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the replication job.



=head2 Encrypted => Bool

When I<true>, the replication job produces encrypted AMIs. See also
C<KmsKeyId> below.



=head2 Frequency => Int

The time between consecutive replication runs, in hours.



=head2 KmsKeyId => Str

KMS key ID for replication jobs that produce encrypted AMIs. Can be any
of the following:

=over

=item *

KMS key ID

=item *

KMS key alias

=item *

ARN referring to KMS key ID

=item *

ARN referring to KMS key alias

=back

If encrypted is I<true> but a KMS key id is not specified, the
customer's default KMS key for EBS is used.



=head2 LicenseType => Str

The license type to be used for the AMI created by a successful
replication run.

Valid values are: C<"AWS">, C<"BYOL">

=head2 NumberOfRecentAmisToKeep => Int

The maximum number of SMS-created AMIs to retain. The oldest will be
deleted once the maximum number is reached and a new AMI is created.



=head2 RoleName => Str

The name of the IAM role to be used by the AWS SMS.



=head2 RunOnce => Bool





=head2 B<REQUIRED> SeedReplicationTime => Str

The seed replication time.



=head2 B<REQUIRED> ServerId => Str

The identifier of the server.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationJob in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

