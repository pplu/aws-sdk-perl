# Generated from json/callargs_class.tt

package Paws::SMS::UpdateReplicationJob;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::SMS::Types qw//;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Encrypted => (is => 'ro', isa => Bool, predicate => 1);
  has Frequency => (is => 'ro', isa => Int, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has LicenseType => (is => 'ro', isa => Str, predicate => 1);
  has NextReplicationRunStartTime => (is => 'ro', isa => Str, predicate => 1);
  has NumberOfRecentAmisToKeep => (is => 'ro', isa => Int, predicate => 1);
  has ReplicationJobId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RoleName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateReplicationJob');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SMS::UpdateReplicationJobResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LicenseType' => {
                                  'type' => 'Str'
                                },
               'NextReplicationRunStartTime' => {
                                                  'type' => 'Str'
                                                },
               'RoleName' => {
                               'type' => 'Str'
                             },
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'Frequency' => {
                                'type' => 'Int'
                              },
               'NumberOfRecentAmisToKeep' => {
                                               'type' => 'Int'
                                             },
               'ReplicationJobId' => {
                                       'type' => 'Str'
                                     },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'KmsKeyId' => 'kmsKeyId',
                       'Description' => 'description',
                       'ReplicationJobId' => 'replicationJobId',
                       'NumberOfRecentAmisToKeep' => 'numberOfRecentAmisToKeep',
                       'Frequency' => 'frequency',
                       'Encrypted' => 'encrypted',
                       'RoleName' => 'roleName',
                       'NextReplicationRunStartTime' => 'nextReplicationRunStartTime',
                       'LicenseType' => 'licenseType'
                     },
  'IsRequired' => {
                    'ReplicationJobId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::UpdateReplicationJob - Arguments for method UpdateReplicationJob on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReplicationJob on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method UpdateReplicationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReplicationJob.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $UpdateReplicationJobResponse = $sms->UpdateReplicationJob(
      ReplicationJobId            => 'MyReplicationJobId',
      Description                 => 'MyDescription',          # OPTIONAL
      Encrypted                   => 1,                        # OPTIONAL
      Frequency                   => 1,                        # OPTIONAL
      KmsKeyId                    => 'MyKmsKeyId',             # OPTIONAL
      LicenseType                 => 'AWS',                    # OPTIONAL
      NextReplicationRunStartTime => '1970-01-01T01:00:00',    # OPTIONAL
      NumberOfRecentAmisToKeep    => 1,                        # OPTIONAL
      RoleName                    => 'MyRoleName',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/UpdateReplicationJob>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the replication job.



=head2 Encrypted => Bool

When true, the replication job produces encrypted AMIs . See also
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

=head2 NextReplicationRunStartTime => Str

The start time of the next replication run.



=head2 NumberOfRecentAmisToKeep => Int

The maximum number of SMS-created AMIs to retain. The oldest will be
deleted once the maximum number is reached and a new AMI is created.



=head2 B<REQUIRED> ReplicationJobId => Str

The identifier of the replication job.



=head2 RoleName => Str

The name of the IAM role to be used by AWS SMS.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReplicationJob in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

