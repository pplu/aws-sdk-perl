
package Paws::IoT::RegisterThingResponse;
  use Moose;
  has CertificatePem => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificatePem');
  has ResourceArns => (is => 'ro', isa => 'Paws::IoT::ResourceArns', traits => ['NameInRequest'], request_name => 'resourceArns');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterThingResponse

=head1 ATTRIBUTES


=head2 CertificatePem => Str

.


=head2 ResourceArns => L<Paws::IoT::ResourceArns>

ARNs for the generated resources.


=head2 _request_id => Str


=cut

