
package Paws::Lambda::AliasConfiguration;
  use Moose;
  has AliasArn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FunctionVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RevisionId => (is => 'ro', isa => 'Str');
  has RoutingConfig => (is => 'ro', isa => 'Paws::Lambda::AliasRoutingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AliasConfiguration

=head1 ATTRIBUTES


=head2 AliasArn => Str

The Amazon Resource Name (ARN) of the alias.


=head2 Description => Str

A description of the alias.


=head2 FunctionVersion => Str

The function version that the alias invokes.


=head2 Name => Str

The name of the alias.


=head2 RevisionId => Str

A unique identifier that changes when you update the alias.


=head2 RoutingConfig => L<Paws::Lambda::AliasRoutingConfiguration>

The routing configuration
(http://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html)
of the alias.


=head2 _request_id => Str


=cut

