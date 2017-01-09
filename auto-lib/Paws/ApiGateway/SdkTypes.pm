
package Paws::ApiGateway::SdkTypes;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::SdkType]');
  has Position => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::SdkTypes

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::SdkType>]

The set of SdkType items that comprise this view of the SdkTypes
collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

