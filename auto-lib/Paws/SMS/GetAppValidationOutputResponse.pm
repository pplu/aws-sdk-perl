
package Paws::SMS::GetAppValidationOutputResponse;
  use Moose;
  has ValidationOutputList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ValidationOutput]', traits => ['NameInRequest'], request_name => 'validationOutputList' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetAppValidationOutputResponse

=head1 ATTRIBUTES


=head2 ValidationOutputList => ArrayRef[L<Paws::SMS::ValidationOutput>]

The validation output.


=head2 _request_id => Str


=cut

1;