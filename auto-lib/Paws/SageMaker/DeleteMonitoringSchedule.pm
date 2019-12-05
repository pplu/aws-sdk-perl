
package Paws::SageMaker::DeleteMonitoringSchedule;
  use Moose;
  has MonitoringScheduleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMonitoringSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteMonitoringSchedule - Arguments for method DeleteMonitoringSchedule on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMonitoringSchedule on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DeleteMonitoringSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMonitoringSchedule.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    $api . sagemaker->DeleteMonitoringSchedule(
      MonitoringScheduleName => 'MyMonitoringScheduleName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DeleteMonitoringSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitoringScheduleName => Str

The name of the monitoring schedule to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMonitoringSchedule in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

