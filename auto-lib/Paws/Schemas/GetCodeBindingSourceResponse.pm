
package Paws::Schemas::GetCodeBindingSourceResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::GetCodeBindingSourceResponse

=head1 ATTRIBUTES


=head2 Body => Str




=head2 _request_id => Str


=cut

