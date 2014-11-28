
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