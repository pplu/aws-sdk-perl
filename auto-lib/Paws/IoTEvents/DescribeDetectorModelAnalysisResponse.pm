
package Paws::IoTEvents::DescribeDetectorModelAnalysisResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DescribeDetectorModelAnalysisResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the analysis activity. The status can be one of the
following values:

=over

=item *

C<RUNNING> - AWS IoT Events is analyzing your detector model. This
process can take several minutes to complete.

=item *

C<COMPLETE> - AWS IoT Events finished analyzing your detector model.

=item *

C<FAILED> - AWS IoT Events couldn't analyze your detector model. Try
again later.

=back


Valid values are: C<"RUNNING">, C<"COMPLETE">, C<"FAILED">
=head2 _request_id => Str


=cut

