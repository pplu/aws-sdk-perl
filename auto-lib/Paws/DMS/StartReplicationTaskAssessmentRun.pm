
package Paws::DMS::StartReplicationTaskAssessmentRun;
  use Moose;
  has AssessmentRunName => (is => 'ro', isa => 'Str', required => 1);
  has Exclude => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IncludeOnly => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str', required => 1);
  has ResultEncryptionMode => (is => 'ro', isa => 'Str');
  has ResultKmsKeyArn => (is => 'ro', isa => 'Str');
  has ResultLocationBucket => (is => 'ro', isa => 'Str', required => 1);
  has ResultLocationFolder => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartReplicationTaskAssessmentRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::StartReplicationTaskAssessmentRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartReplicationTaskAssessmentRun - Arguments for method StartReplicationTaskAssessmentRun on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartReplicationTaskAssessmentRun on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method StartReplicationTaskAssessmentRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartReplicationTaskAssessmentRun.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $StartReplicationTaskAssessmentRunResponse =
      $dms->StartReplicationTaskAssessmentRun(
      AssessmentRunName    => 'MyString',
      ReplicationTaskArn   => 'MyString',
      ResultLocationBucket => 'MyString',
      ServiceAccessRoleArn => 'MyString',
      Exclude              => [ 'MyString', ... ],    # OPTIONAL
      IncludeOnly          => [ 'MyString', ... ],    # OPTIONAL
      ResultEncryptionMode => 'MyString',             # OPTIONAL
      ResultKmsKeyArn      => 'MyString',             # OPTIONAL
      ResultLocationFolder => 'MyString',             # OPTIONAL
      );

    # Results:
    my $ReplicationTaskAssessmentRun =
      $StartReplicationTaskAssessmentRunResponse->ReplicationTaskAssessmentRun;

    # Returns a L<Paws::DMS::StartReplicationTaskAssessmentRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/StartReplicationTaskAssessmentRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentRunName => Str

Unique name to identify the assessment run.



=head2 Exclude => ArrayRef[Str|Undef]

Space-separated list of names for specific individual assessments that
you want to exclude. These names come from the default list of
individual assessments that AWS DMS supports for the associated
migration task. This task is specified by C<ReplicationTaskArn>.

You can't set a value for C<Exclude> if you also set a value for
C<IncludeOnly> in the API operation.

To identify the names of the default individual assessments that AWS
DMS supports for the associated migration task, run the
C<DescribeApplicableIndividualAssessments> operation using its own
C<ReplicationTaskArn> request parameter.



=head2 IncludeOnly => ArrayRef[Str|Undef]

Space-separated list of names for specific individual assessments that
you want to include. These names come from the default list of
individual assessments that AWS DMS supports for the associated
migration task. This task is specified by C<ReplicationTaskArn>.

You can't set a value for C<IncludeOnly> if you also set a value for
C<Exclude> in the API operation.

To identify the names of the default individual assessments that AWS
DMS supports for the associated migration task, run the
C<DescribeApplicableIndividualAssessments> operation using its own
C<ReplicationTaskArn> request parameter.



=head2 B<REQUIRED> ReplicationTaskArn => Str

Amazon Resource Name (ARN) of the migration task associated with the
premigration assessment run that you want to start.



=head2 ResultEncryptionMode => Str

Encryption mode that you can specify to encrypt the results of this
assessment run. If you don't specify this request parameter, AWS DMS
stores the assessment run results without encryption. You can specify
one of the options following:

=over

=item *

C<"SSE_S3"> E<ndash> The server-side encryption provided as a default
by Amazon S3.

=item *

C<"SSE_KMS"> E<ndash> AWS Key Management Service (AWS KMS) encryption.
This encryption can use either a custom KMS encryption key that you
specify or the default KMS encryption key that DMS provides.

=back




=head2 ResultKmsKeyArn => Str

ARN of a custom KMS encryption key that you specify when you set
C<ResultEncryptionMode> to C<"SSE_KMS>".



=head2 B<REQUIRED> ResultLocationBucket => Str

Amazon S3 bucket where you want AWS DMS to store the results of this
assessment run.



=head2 ResultLocationFolder => Str

Folder within an Amazon S3 bucket where you want AWS DMS to store the
results of this assessment run.



=head2 B<REQUIRED> ServiceAccessRoleArn => Str

ARN of a service role needed to start the assessment run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartReplicationTaskAssessmentRun in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

