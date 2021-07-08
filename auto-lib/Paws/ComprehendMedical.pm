package Paws::ComprehendMedical;
  use Moose;
  sub service { 'comprehendmedical' }
  sub signing_name { 'comprehendmedical' }
  sub version { '2018-10-30' }
  sub target_prefix { 'ComprehendMedical_20181030' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DescribeEntitiesDetectionV2Job {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::DescribeEntitiesDetectionV2Job', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeICD10CMInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::DescribeICD10CMInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePHIDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::DescribePHIDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRxNormInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::DescribeRxNormInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::DetectEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectEntitiesV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::DetectEntitiesV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectPHI {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::DetectPHI', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InferICD10CM {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::InferICD10CM', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InferRxNorm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::InferRxNorm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntitiesDetectionV2Jobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::ListEntitiesDetectionV2Jobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListICD10CMInferenceJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::ListICD10CMInferenceJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPHIDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::ListPHIDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRxNormInferenceJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::ListRxNormInferenceJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEntitiesDetectionV2Job {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::StartEntitiesDetectionV2Job', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartICD10CMInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::StartICD10CMInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPHIDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::StartPHIDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartRxNormInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::StartRxNormInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopEntitiesDetectionV2Job {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::StopEntitiesDetectionV2Job', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopICD10CMInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::StopICD10CMInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopPHIDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::StopPHIDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopRxNormInferenceJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ComprehendMedical::StopRxNormInferenceJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DescribeEntitiesDetectionV2Job DescribeICD10CMInferenceJob DescribePHIDetectionJob DescribeRxNormInferenceJob DetectEntities DetectEntitiesV2 DetectPHI InferICD10CM InferRxNorm ListEntitiesDetectionV2Jobs ListICD10CMInferenceJobs ListPHIDetectionJobs ListRxNormInferenceJobs StartEntitiesDetectionV2Job StartICD10CMInferenceJob StartPHIDetectionJob StartRxNormInferenceJob StopEntitiesDetectionV2Job StopICD10CMInferenceJob StopPHIDetectionJob StopRxNormInferenceJob / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical - Perl Interface to AWS AWS Comprehend Medical

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ComprehendMedical');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Comprehend Medical extracts structured information from
unstructured clinical text. Use these actions to gain insight in your
documents.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30>


=head1 METHODS

=head2 DescribeEntitiesDetectionV2Job

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::DescribeEntitiesDetectionV2Job>

Returns: a L<Paws::ComprehendMedical::DescribeEntitiesDetectionV2JobResponse> instance

Gets the properties associated with a medical entities detection job.
Use this operation to get the status of a detection job.


=head2 DescribeICD10CMInferenceJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::DescribeICD10CMInferenceJob>

Returns: a L<Paws::ComprehendMedical::DescribeICD10CMInferenceJobResponse> instance

Gets the properties associated with an InferICD10CM job. Use this
operation to get the status of an inference job.


=head2 DescribePHIDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::DescribePHIDetectionJob>

Returns: a L<Paws::ComprehendMedical::DescribePHIDetectionJobResponse> instance

Gets the properties associated with a protected health information
(PHI) detection job. Use this operation to get the status of a
detection job.


=head2 DescribeRxNormInferenceJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::DescribeRxNormInferenceJob>

Returns: a L<Paws::ComprehendMedical::DescribeRxNormInferenceJobResponse> instance

Gets the properties associated with an InferRxNorm job. Use this
operation to get the status of an inference job.


=head2 DetectEntities

=over

=item Text => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::DetectEntities>

Returns: a L<Paws::ComprehendMedical::DetectEntitiesResponse> instance

The C<DetectEntities> operation is deprecated. You should use the
DetectEntitiesV2 operation instead.

Inspects the clinical text for a variety of medical entities and
returns specific information about them such as entity category,
location, and confidence score on that information .


=head2 DetectEntitiesV2

=over

=item Text => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::DetectEntitiesV2>

Returns: a L<Paws::ComprehendMedical::DetectEntitiesV2Response> instance

Inspects the clinical text for a variety of medical entities and
returns specific information about them such as entity category,
location, and confidence score on that information. Amazon Comprehend
Medical only detects medical entities in English language texts.

The C<DetectEntitiesV2> operation replaces the DetectEntities
operation. This new action uses a different model for determining the
entities in your medical text and changes the way that some entities
are returned in the output. You should use the C<DetectEntitiesV2>
operation in all new applications.

The C<DetectEntitiesV2> operation returns the C<Acuity> and
C<Direction> entities as attributes instead of types.


=head2 DetectPHI

=over

=item Text => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::DetectPHI>

Returns: a L<Paws::ComprehendMedical::DetectPHIResponse> instance

Inspects the clinical text for protected health information (PHI)
entities and returns the entity category, location, and confidence
score for each entity. Amazon Comprehend Medical only detects entities
in English language texts.


=head2 InferICD10CM

=over

=item Text => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::InferICD10CM>

Returns: a L<Paws::ComprehendMedical::InferICD10CMResponse> instance

InferICD10CM detects medical conditions as entities listed in a patient
record and links those entities to normalized concept identifiers in
the ICD-10-CM knowledge base from the Centers for Disease Control.
Amazon Comprehend Medical only detects medical entities in English
language texts.


=head2 InferRxNorm

=over

=item Text => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::InferRxNorm>

Returns: a L<Paws::ComprehendMedical::InferRxNormResponse> instance

InferRxNorm detects medications as entities listed in a patient record
and links to the normalized concept identifiers in the RxNorm database
from the National Library of Medicine. Amazon Comprehend Medical only
detects medical entities in English language texts.


=head2 ListEntitiesDetectionV2Jobs

=over

=item [Filter => L<Paws::ComprehendMedical::ComprehendMedicalAsyncJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::ListEntitiesDetectionV2Jobs>

Returns: a L<Paws::ComprehendMedical::ListEntitiesDetectionV2JobsResponse> instance

Gets a list of medical entity detection jobs that you have submitted.


=head2 ListICD10CMInferenceJobs

=over

=item [Filter => L<Paws::ComprehendMedical::ComprehendMedicalAsyncJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::ListICD10CMInferenceJobs>

Returns: a L<Paws::ComprehendMedical::ListICD10CMInferenceJobsResponse> instance

Gets a list of InferICD10CM jobs that you have submitted.


=head2 ListPHIDetectionJobs

=over

=item [Filter => L<Paws::ComprehendMedical::ComprehendMedicalAsyncJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::ListPHIDetectionJobs>

Returns: a L<Paws::ComprehendMedical::ListPHIDetectionJobsResponse> instance

Gets a list of protected health information (PHI) detection jobs that
you have submitted.


=head2 ListRxNormInferenceJobs

=over

=item [Filter => L<Paws::ComprehendMedical::ComprehendMedicalAsyncJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::ListRxNormInferenceJobs>

Returns: a L<Paws::ComprehendMedical::ListRxNormInferenceJobsResponse> instance

Gets a list of InferRxNorm jobs that you have submitted.


=head2 StartEntitiesDetectionV2Job

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::ComprehendMedical::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::ComprehendMedical::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [KMSKey => Str]


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::StartEntitiesDetectionV2Job>

Returns: a L<Paws::ComprehendMedical::StartEntitiesDetectionV2JobResponse> instance

Starts an asynchronous medical entity detection job for a collection of
documents. Use the C<DescribeEntitiesDetectionV2Job> operation to track
the status of a job.


=head2 StartICD10CMInferenceJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::ComprehendMedical::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::ComprehendMedical::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [KMSKey => Str]


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::StartICD10CMInferenceJob>

Returns: a L<Paws::ComprehendMedical::StartICD10CMInferenceJobResponse> instance

Starts an asynchronous job to detect medical conditions and link them
to the ICD-10-CM ontology. Use the C<DescribeICD10CMInferenceJob>
operation to track the status of a job.


=head2 StartPHIDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::ComprehendMedical::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::ComprehendMedical::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [KMSKey => Str]


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::StartPHIDetectionJob>

Returns: a L<Paws::ComprehendMedical::StartPHIDetectionJobResponse> instance

Starts an asynchronous job to detect protected health information
(PHI). Use the C<DescribePHIDetectionJob> operation to track the status
of a job.


=head2 StartRxNormInferenceJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::ComprehendMedical::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::ComprehendMedical::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [KMSKey => Str]


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::StartRxNormInferenceJob>

Returns: a L<Paws::ComprehendMedical::StartRxNormInferenceJobResponse> instance

Starts an asynchronous job to detect medication entities and link them
to the RxNorm ontology. Use the C<DescribeRxNormInferenceJob> operation
to track the status of a job.


=head2 StopEntitiesDetectionV2Job

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::StopEntitiesDetectionV2Job>

Returns: a L<Paws::ComprehendMedical::StopEntitiesDetectionV2JobResponse> instance

Stops a medical entities detection job in progress.


=head2 StopICD10CMInferenceJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::StopICD10CMInferenceJob>

Returns: a L<Paws::ComprehendMedical::StopICD10CMInferenceJobResponse> instance

Stops an InferICD10CM inference job in progress.


=head2 StopPHIDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::StopPHIDetectionJob>

Returns: a L<Paws::ComprehendMedical::StopPHIDetectionJobResponse> instance

Stops a protected health information (PHI) detection job in progress.


=head2 StopRxNormInferenceJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::ComprehendMedical::StopRxNormInferenceJob>

Returns: a L<Paws::ComprehendMedical::StopRxNormInferenceJobResponse> instance

Stops an InferRxNorm inference job in progress.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

