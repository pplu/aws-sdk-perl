
package Paws::Discovery::DescribeContinuousExportsResponse;
  use Moose;
  has Descriptions => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::ContinuousExportDescription]', traits => ['NameInRequest'], request_name => 'descriptions' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeContinuousExportsResponse

=head1 ATTRIBUTES


=head2 Descriptions => ArrayRef[L<Paws::Discovery::ContinuousExportDescription>]

A list of continuous export descriptions.


=head2 NextToken => Str

The token from the previous call to C<DescribeExportTasks>.


=head2 _request_id => Str


=cut

1;