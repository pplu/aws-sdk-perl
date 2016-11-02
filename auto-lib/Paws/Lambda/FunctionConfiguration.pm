
package Paws::Lambda::FunctionConfiguration;
  use Moose;
  has CodeSha256 => (is => 'ro', isa => 'Str');
  has CodeSize => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has FunctionArn => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str');
  has Handler => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has MemorySize => (is => 'ro', isa => 'Int');
  has Role => (is => 'ro', isa => 'Str');
  has Runtime => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
  has Version => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::Lambda::VpcConfigResponse');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::FunctionConfiguration

=head1 ATTRIBUTES


=head2 CodeSha256 => Str

It is the SHA256 hash of your function deployment package.


=head2 CodeSize => Int

The size, in bytes, of the function .zip file you uploaded.


=head2 Description => Str

The user-provided description.


=head2 FunctionArn => Str

The Amazon Resource Name (ARN) assigned to the function.


=head2 FunctionName => Str

The name of the function.


=head2 Handler => Str

The function Lambda calls to begin executing your function.


=head2 LastModified => Str

The time stamp of the last time you updated the function.


=head2 MemorySize => Int

The memory size, in MB, you configured for the function. Must be a
multiple of 64 MB.


=head2 Role => Str

The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when
it executes your function to access any other Amazon Web Services (AWS)
resources.


=head2 Runtime => Str

The runtime environment for the Lambda function.

To use the Node.js runtime v4.3, set the value to "nodejs4.3". To use
earlier runtime (v0.10.42), set the value to "nodejs".

Valid values are: C<"nodejs">, C<"nodejs4.3">, C<"java8">, C<"python2.7">
=head2 Timeout => Int

The function execution time at which Lambda should terminate the
function. Because the execution time has cost implications, we
recommend you set this value based on your expected execution time. The
default is 3 seconds.


=head2 Version => Str

The version of the Lambda function.


=head2 VpcConfig => L<Paws::Lambda::VpcConfigResponse>

VPC configuration associated with your Lambda function.


=head2 _request_id => Str


=cut

