
package Paws::DMS::DescribeApplicableIndividualAssessments;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has MigrationType => (is => 'ro', isa => 'Str');
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str');
  has SourceEngineName => (is => 'ro', isa => 'Str');
  has TargetEngineName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicableIndividualAssessments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeApplicableIndividualAssessmentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeApplicableIndividualAssessments - Arguments for method DescribeApplicableIndividualAssessments on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplicableIndividualAssessments on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeApplicableIndividualAssessments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplicableIndividualAssessments.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeApplicableIndividualAssessmentsResponse =
      $dms->DescribeApplicableIndividualAssessments(
      Marker                 => 'MyString',     # OPTIONAL
      MaxRecords             => 1,              # OPTIONAL
      MigrationType          => 'full-load',    # OPTIONAL
      ReplicationInstanceArn => 'MyString',     # OPTIONAL
      ReplicationTaskArn     => 'MyString',     # OPTIONAL
      SourceEngineName       => 'MyString',     # OPTIONAL
      TargetEngineName       => 'MyString',     # OPTIONAL
      );

    # Results:
    my $IndividualAssessmentNames =
      $DescribeApplicableIndividualAssessmentsResponse
      ->IndividualAssessmentNames;
    my $Marker = $DescribeApplicableIndividualAssessmentsResponse->Marker;

# Returns a L<Paws::DMS::DescribeApplicableIndividualAssessmentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeApplicableIndividualAssessments>

=head1 ATTRIBUTES


=head2 Marker => Str

Optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

Maximum number of records to include in the response. If more records
exist than the specified C<MaxRecords> value, a pagination token called
a marker is included in the response so that the remaining results can
be retrieved.



=head2 MigrationType => Str

Name of the migration type that each provided individual assessment
must support.

Valid values are: C<"full-load">, C<"cdc">, C<"full-load-and-cdc">

=head2 ReplicationInstanceArn => Str

ARN of a replication instance on which you want to base the default
list of individual assessments.



=head2 ReplicationTaskArn => Str

Amazon Resource Name (ARN) of a migration task on which you want to
base the default list of individual assessments.



=head2 SourceEngineName => Str

Name of a database engine that the specified replication instance
supports as a source.



=head2 TargetEngineName => Str

Name of a database engine that the specified replication instance
supports as a target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplicableIndividualAssessments in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

