
package Paws::SQS::GetQueueAttributesResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'Paws::SQS::AttributeMap', xmlname => 'Attribute', traits => ['Unwrapped',]);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::GetQueueAttributesResult

=head1 ATTRIBUTES

=head2 Attributes => Paws::SQS::AttributeMap

  

A map of attributes to the respective values.











=cut

