
package Paws::IoT::CancelAuditTask;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'taskId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelAuditTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/tasks/{taskId}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CancelAuditTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CancelAuditTask - Arguments for method CancelAuditTask on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelAuditTask on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CancelAuditTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelAuditTask.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CancelAuditTaskResponse = $iot->CancelAuditTask(
      TaskId => 'MyAuditTaskId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CancelAuditTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskId => Str

The ID of the audit you want to cancel. You can only cancel an audit
that is "IN_PROGRESS".




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelAuditTask in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

