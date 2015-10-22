
package Paws::Lambda::AliasConfiguration;
  use Moose;
  has AliasArn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FunctionVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AliasConfiguration

=head1 ATTRIBUTES

=head2 AliasArn => Str

  Lambda function ARN that is qualified using alias name as the suffix.
For example, if you create an alias "BETA" pointing to a helloworld
function version, the ARN is
C<arn:aws:lambda:aws-regions:acct-id:function:helloworld:BETA>.
=head2 Description => Str

  Alias description.
=head2 FunctionVersion => Str

  Function version to which the alias points.
=head2 Name => Str

  Alias name.


=cut

