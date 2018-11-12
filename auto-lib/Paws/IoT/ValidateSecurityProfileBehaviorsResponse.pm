
package Paws::IoT::ValidateSecurityProfileBehaviorsResponse;
  use Moose;
  has Valid => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'valid');
  has ValidationErrors => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ValidationError]', traits => ['NameInRequest'], request_name => 'validationErrors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ValidateSecurityProfileBehaviorsResponse

=head1 ATTRIBUTES


=head2 Valid => Bool

True if the behaviors were valid.


=head2 ValidationErrors => ArrayRef[L<Paws::IoT::ValidationError>]

The list of any errors found in the behaviors.


=head2 _request_id => Str


=cut

