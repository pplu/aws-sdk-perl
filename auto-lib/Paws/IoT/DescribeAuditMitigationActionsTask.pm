
package Paws::IoT::DescribeAuditMitigationActionsTask;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAuditMitigationActionsTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/mitigationactions/tasks/{taskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeAuditMitigationActionsTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuditMitigationActionsTask - Arguments for method DescribeAuditMitigationActionsTask on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAuditMitigationActionsTask on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeAuditMitigationActionsTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAuditMitigationActionsTask.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeAuditMitigationActionsTaskResponse =
      $iot->DescribeAuditMitigationActionsTask(
      TaskId => 'MyMitigationActionsTaskId',

      );

    # Results:
    my $ActionsDefinition =
      $DescribeAuditMitigationActionsTaskResponse->ActionsDefinition;
    my $AuditCheckToActionsMapping =
      $DescribeAuditMitigationActionsTaskResponse->AuditCheckToActionsMapping;
    my $EndTime   = $DescribeAuditMitigationActionsTaskResponse->EndTime;
    my $StartTime = $DescribeAuditMitigationActionsTaskResponse->StartTime;
    my $Target    = $DescribeAuditMitigationActionsTaskResponse->Target;
    my $TaskStatistics =
      $DescribeAuditMitigationActionsTaskResponse->TaskStatistics;
    my $TaskStatus = $DescribeAuditMitigationActionsTaskResponse->TaskStatus;

    # Returns a L<Paws::IoT::DescribeAuditMitigationActionsTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeAuditMitigationActionsTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The unique identifier for the audit mitigation task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAuditMitigationActionsTask in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

