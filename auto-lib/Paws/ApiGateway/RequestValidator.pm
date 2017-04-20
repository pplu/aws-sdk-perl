
package Paws::ApiGateway::RequestValidator;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ValidateRequestBody => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'validateRequestBody');
  has ValidateRequestParameters => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'validateRequestParameters');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::RequestValidator

=head1 ATTRIBUTES


=head2 Id => Str

The identifier of this RequestValidator.


=head2 Name => Str

The name of this RequestValidator


=head2 ValidateRequestBody => Bool

A Boolean flag to indicate whether to validate a request body according
to the configured Model schema.


=head2 ValidateRequestParameters => Bool

A Boolean flag to indicate whether to validate request parameters
(C<true>) or not (C<false>).


=head2 _request_id => Str


=cut

