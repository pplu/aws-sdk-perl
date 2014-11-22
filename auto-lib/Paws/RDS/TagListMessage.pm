
package Paws::RDS::TagListMessage {
  use Moose;
  with 'Paws::API::ResultParser';
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');

}
1;