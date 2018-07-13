
package Paws::Pinpoint::RemoveAttributesResponse;
  use Moose;
  has AttributesResource => (is => 'ro', isa => 'Paws::Pinpoint::AttributesResource', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'AttributesResource');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::RemoveAttributesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributesResource => L<Paws::Pinpoint::AttributesResource>




=head2 _request_id => Str


=cut

