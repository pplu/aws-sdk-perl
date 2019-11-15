
package Paws::Glue::GetMLTaskRun;
  use Moose;
  has TaskRunId => (is => 'ro', isa => 'Str', required => 1);
  has TransformId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMLTaskRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetMLTaskRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetMLTaskRun - Arguments for method GetMLTaskRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMLTaskRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetMLTaskRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMLTaskRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetMLTaskRunResponse = $glue->GetMLTaskRun(
      TaskRunId   => 'MyHashString',
      TransformId => 'MyHashString',

    );

    # Results:
    my $CompletedOn    = $GetMLTaskRunResponse->CompletedOn;
    my $ErrorString    = $GetMLTaskRunResponse->ErrorString;
    my $ExecutionTime  = $GetMLTaskRunResponse->ExecutionTime;
    my $LastModifiedOn = $GetMLTaskRunResponse->LastModifiedOn;
    my $LogGroupName   = $GetMLTaskRunResponse->LogGroupName;
    my $Properties     = $GetMLTaskRunResponse->Properties;
    my $StartedOn      = $GetMLTaskRunResponse->StartedOn;
    my $Status         = $GetMLTaskRunResponse->Status;
    my $TaskRunId      = $GetMLTaskRunResponse->TaskRunId;
    my $TransformId    = $GetMLTaskRunResponse->TransformId;

    # Returns a L<Paws::Glue::GetMLTaskRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetMLTaskRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskRunId => Str

The unique identifier of the task run.



=head2 B<REQUIRED> TransformId => Str

The unique identifier of the machine learning transform.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMLTaskRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

