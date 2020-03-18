
package Paws::Pinpoint::ListTemplateVersionsResponse;
  use Moose;
  has TemplateVersionsResponse => (is => 'ro', isa => 'Paws::Pinpoint::TemplateVersionsResponse', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'TemplateVersionsResponse');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ListTemplateVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateVersionsResponse => L<Paws::Pinpoint::TemplateVersionsResponse>




=head2 _request_id => Str


=cut

