
package Paws::SNS::GetSMSAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::MapStringToString');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetSMSAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SNS::MapStringToString>

The SMS attribute names and their values.


=head2 _request_id => Str


=cut

