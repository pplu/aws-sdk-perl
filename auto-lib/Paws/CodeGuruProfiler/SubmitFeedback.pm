
package Paws::CodeGuruProfiler::SubmitFeedback;
  use Moose;
  has AnomalyInstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'anomalyInstanceId', required => 1);
  has Comment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'comment');
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubmitFeedback');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/internal/profilingGroups/{profilingGroupName}/anomalies/{anomalyInstanceId}/feedback');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::SubmitFeedbackResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::SubmitFeedback - Arguments for method SubmitFeedback on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitFeedback on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method SubmitFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitFeedback.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $SubmitFeedbackResponse = $codeguru -profiler->SubmitFeedback(
      AnomalyInstanceId  => 'MyAnomalyInstanceId',
      ProfilingGroupName => 'MyProfilingGroupName',
      Type               => 'Positive',
      Comment            => 'MyString',               # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/SubmitFeedback>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyInstanceId => Str

The universally unique identifier (UUID) of the C<AnomalyInstance>
(https://docs.aws.amazon.com/codeguru/latest/profiler-api/API_AnomalyInstance.html)
object that is included in the analysis data.



=head2 Comment => Str

Optional feedback about this anomaly.



=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group that is associated with the analysis
data.



=head2 B<REQUIRED> Type => Str

The feedback tpye. Thee are two valid values, C<Positive> and
C<Negative>.

Valid values are: C<"Positive">, C<"Negative">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitFeedback in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

