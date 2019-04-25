
package Paws::Backup::ListBackupJobs;
  use Moose;
  has ByBackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'backupVaultName');
  has ByCreatedAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAfter');
  has ByCreatedBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBefore');
  has ByResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceArn');
  has ByResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType');
  has ByState => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'state');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBackupJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-jobs/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListBackupJobsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupJobs - Arguments for method ListBackupJobs on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBackupJobs on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListBackupJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBackupJobs.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListBackupJobsOutput = $backup->ListBackupJobs(
      ByBackupVaultName => 'MyBackupVaultName',      # OPTIONAL
      ByCreatedAfter    => '1970-01-01T01:00:00',    # OPTIONAL
      ByCreatedBefore   => '1970-01-01T01:00:00',    # OPTIONAL
      ByResourceArn     => 'MyARN',                  # OPTIONAL
      ByResourceType    => 'MyResourceType',         # OPTIONAL
      ByState           => 'CREATED',                # OPTIONAL
      MaxResults        => 1,                        # OPTIONAL
      NextToken         => 'Mystring',               # OPTIONAL
    );

    # Results:
    my $BackupJobs = $ListBackupJobsOutput->BackupJobs;
    my $NextToken  = $ListBackupJobsOutput->NextToken;

    # Returns a L<Paws::Backup::ListBackupJobsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListBackupJobs>

=head1 ATTRIBUTES


=head2 ByBackupVaultName => Str

Returns only backup jobs that will be stored in the specified backup
vault. Backup vaults are identified by names that are unique to the
account used to create them and the AWS Region where they are created.
They consist of lowercase letters, numbers, and hyphens.



=head2 ByCreatedAfter => Str

Returns only backup jobs that were created after the specified date.



=head2 ByCreatedBefore => Str

Returns only backup jobs that were created before the specified date.



=head2 ByResourceArn => Str

Returns only backup jobs that match the specified resource Amazon
Resource Name (ARN).



=head2 ByResourceType => Str

Returns only backup jobs for the specified resources:

=over

=item *

C<EBS> for Amazon Elastic Block Store

=item *

C<SGW> for AWS Storage Gateway

=item *

C<RDS> for Amazon Relational Database Service

=item *

C<DDB> for Amazon DynamoDB

=item *

C<EFS> for Amazon Elastic File System

=back




=head2 ByState => Str

Returns only backup jobs that are in the specified state.

Valid values are: C<"CREATED">, C<"PENDING">, C<"RUNNING">, C<"ABORTING">, C<"ABORTED">, C<"COMPLETED">, C<"FAILED">, C<"EXPIRED">

=head2 MaxResults => Int

The maximum number of items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBackupJobs in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

