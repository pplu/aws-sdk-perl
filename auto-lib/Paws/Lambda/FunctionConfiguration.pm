
package Paws::Lambda::FunctionConfiguration {
  use Moose;
  with 'Paws::API::ResultParser';
  has CodeSize => (is => 'ro', isa => 'Num');
  has ConfigurationId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FunctionARN => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str');
  has Handler => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has MemorySize => (is => 'ro', isa => 'Int');
  has Mode => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has Runtime => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::FunctionConfiguration

=head1 ATTRIBUTES

=head2 CodeSize => Num

  

The size, in bytes, of the function .zip file you uploaded.









=head2 ConfigurationId => Str

  

A Lambda-assigned unique identifier for the current function code and
related configuration.









=head2 Description => Str

  

The user-provided description.









=head2 FunctionARN => Str

  

The Amazon Resource Name (ARN) assigned to the function.









=head2 FunctionName => Str

  

The name of the function.









=head2 Handler => Str

  

The function Lambda calls to begin executing your function.









=head2 LastModified => Str

  

The timestamp of the last time you updated the function.









=head2 MemorySize => Int

  

The memory size, in MB, you configured for the function. Must be a
multiple of 64 MB.









=head2 Mode => Str

  

The type of the Lambda function you uploaded.









=head2 Role => Str

  

The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when
it executes your function to access any other Amazon Web Services (AWS)
resources.









=head2 Runtime => Str

  

The runtime environment for the Lambda function.









=head2 Timeout => Int

  

The function execution time at which Lambda should terminate the
function. Because the execution time has cost implications, we
recommend you set this value based on your expected execution time. The
default is 3 seconds.











=cut

