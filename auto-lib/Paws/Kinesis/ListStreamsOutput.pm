
package Paws::Kinesis::ListStreamsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has HasMoreStreams => (is => 'ro', isa => 'Bool', required => 1);
  has StreamNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
1;