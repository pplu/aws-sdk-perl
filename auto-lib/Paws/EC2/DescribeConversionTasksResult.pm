
package Paws::EC2::DescribeConversionTasksResult;
  use Moose;
  has ConversionTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ConversionTask]', request_name => 'conversionTasks', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeConversionTasksResult

=head1 ATTRIBUTES


=head2 ConversionTasks => ArrayRef[L<Paws::EC2::ConversionTask>]

Information about the conversion tasks.


=head2 _request_id => Str


=cut

