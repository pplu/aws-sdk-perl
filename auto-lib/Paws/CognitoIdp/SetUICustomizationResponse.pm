
package Paws::CognitoIdp::SetUICustomizationResponse;
  use Moose;
  has UICustomization => (is => 'ro', isa => 'Paws::CognitoIdp::UICustomizationType', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetUICustomizationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UICustomization => L<Paws::CognitoIdp::UICustomizationType>

The UI customization information.


=head2 _request_id => Str


=cut

1;