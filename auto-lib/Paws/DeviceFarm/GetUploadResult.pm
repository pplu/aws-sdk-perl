
package Paws::DeviceFarm::GetUploadResult;
  use Moose;
  has Upload => (is => 'ro', isa => 'Paws::DeviceFarm::Upload', traits => ['NameInRequest'], request_name => 'upload' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetUploadResult

=head1 ATTRIBUTES


=head2 Upload => L<Paws::DeviceFarm::Upload>

An app or a set of one or more tests to upload or that have been
uploaded.


=head2 _request_id => Str


=cut

1;