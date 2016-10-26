
package Paws::S3::RestoreObjectOutput;
  use Moose;
  has RequestCharged => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-request-charged');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::RestoreObjectOutput

=head1 ATTRIBUTES


=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

