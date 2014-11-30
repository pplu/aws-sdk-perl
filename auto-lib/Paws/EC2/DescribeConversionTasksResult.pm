
package Paws::EC2::DescribeConversionTasksResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ConversionTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ConversionTask]', traits => ['Unwrapped'], xmlname => 'conversionTasks');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeConversionTasksResult

=head1 ATTRIBUTES

=head2 ConversionTasks => ArrayRef[Paws::EC2::ConversionTask]

  


=cut

