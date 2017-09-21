
package Paws::Greengrass::GetFunctionDefinitionVersionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Definition => (is => 'ro', isa => 'Paws::Greengrass::FunctionDefinitionVersion');
  has Id => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetFunctionDefinitionVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Arn of the function definition version.


=head2 CreationTimestamp => Str

Timestamp when the funtion definition version was created.


=head2 Definition => L<Paws::Greengrass::FunctionDefinitionVersion>

Information on the definition.


=head2 Id => Str

Id of the function definition the version belongs to.


=head2 Version => Str

Version of the function definition version.


=head2 _request_id => Str


=cut

