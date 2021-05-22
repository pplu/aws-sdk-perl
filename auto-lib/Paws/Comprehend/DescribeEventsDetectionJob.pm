
package Paws::Comprehend::DescribeEventsDetectionJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventsDetectionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Comprehend::DescribeEventsDetectionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeEventsDetectionJob - Arguments for method DescribeEventsDetectionJob on L<Paws::Comprehend>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventsDetectionJob on the
L<Amazon Comprehend|Paws::Comprehend> service. Use the attributes of this class
as arguments to method DescribeEventsDetectionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventsDetectionJob.

=head1 SYNOPSIS

    my $comprehend = Paws->service('Comprehend');
    my $DescribeEventsDetectionJobResponse =
      $comprehend->DescribeEventsDetectionJob(
      JobId => 'MyJobId',

      );

    # Results:
    my $EventsDetectionJobProperties =
      $DescribeEventsDetectionJobResponse->EventsDetectionJobProperties;

    # Returns a L<Paws::Comprehend::DescribeEventsDetectionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend/DescribeEventsDetectionJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier of the events detection job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventsDetectionJob in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

