
package Paws::CloudFormation::SetTypeConfigurationOutput;
  use Moose;
  has ConfigurationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::SetTypeConfigurationOutput

=head1 ATTRIBUTES


=head2 ConfigurationArn => Str

The Amazon Resource Name (ARN) for the configuration data, in this
account and region.

Conditional: You must specify C<ConfigurationArn>, or C<Type> and
C<TypeName>.


=head2 _request_id => Str


=cut

