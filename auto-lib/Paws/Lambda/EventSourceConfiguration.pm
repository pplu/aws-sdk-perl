
package Paws::Lambda::EventSourceConfiguration {
  use Moose;
  with 'Paws::API::ResultParser';
  has BatchSize => (is => 'ro', isa => 'Int');
  has EventSource => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str');
  has IsActive => (is => 'ro', isa => 'Bool');
  has LastModified => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::Lambda::Map');
  has Role => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UUID => (is => 'ro', isa => 'Str');

}
1;