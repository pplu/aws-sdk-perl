
package Paws::ApiGateway::Template;
  use Moose;
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Template

=head1 ATTRIBUTES


=head2 Value => Str

The Apache Velocity Template Language (VTL) template content used for
the template resource.


=head2 _request_id => Str


=cut

