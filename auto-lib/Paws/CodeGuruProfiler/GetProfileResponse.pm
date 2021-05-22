
package Paws::CodeGuruProfiler::GetProfileResponse;
  use Moose;
  has ContentEncoding => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Encoding');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type', required => 1);
  has Profile => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'profile', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Profile');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::GetProfileResponse

=head1 ATTRIBUTES


=head2 ContentEncoding => Str

The content encoding of the profile.


=head2 B<REQUIRED> ContentType => Str

The content type of the profile in the payload. It is either
C<application/json> or the default C<application/x-amzn-ion>.


=head2 B<REQUIRED> Profile => Str

Information about the profile.


=head2 _request_id => Str


=cut

