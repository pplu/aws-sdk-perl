
package Paws::SQS::GetQueueAttributesResult;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SQS::QueueAttributeMap', request_name => 'Attribute', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::GetQueueAttributesResult

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SQS::QueueAttributeMap>

A map of attributes to their respective values.


=head2 _request_id => Str


=cut

