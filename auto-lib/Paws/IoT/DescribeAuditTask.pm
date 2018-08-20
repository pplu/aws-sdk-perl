
package Paws::IoT::DescribeAuditTask;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAuditTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/tasks/{taskId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeAuditTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuditTask - Arguments for method DescribeAuditTask on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAuditTask on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeAuditTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAuditTask.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeAuditTaskResponse = $iot->DescribeAuditTask(
      TaskId => 'MyAuditTaskId',

    );

    # Results:
    my $AuditDetails       = $DescribeAuditTaskResponse->AuditDetails;
    my $ScheduledAuditName = $DescribeAuditTaskResponse->ScheduledAuditName;
    my $TaskStartTime      = $DescribeAuditTaskResponse->TaskStartTime;
    my $TaskStatistics     = $DescribeAuditTaskResponse->TaskStatistics;
    my $TaskStatus         = $DescribeAuditTaskResponse->TaskStatus;
    my $TaskType           = $DescribeAuditTaskResponse->TaskType;

    # Returns a L<Paws::IoT::DescribeAuditTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeAuditTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The ID of the audit whose information you want to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAuditTask in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

