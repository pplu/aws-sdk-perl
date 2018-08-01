
package Paws::S3::SelectObjectContentOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::S3::SelectObjectContentEventStream', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::SelectObjectContentOutput

=head1 ATTRIBUTES


=head2 Payload => L<Paws::S3::SelectObjectContentEventStream>






=cut

