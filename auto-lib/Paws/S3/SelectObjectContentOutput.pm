
package Paws::S3::SelectObjectContentOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_SelectObjectContentEventStream/;
  has Payload => (is => 'ro', isa => S3_SelectObjectContentEventStream);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'Payload');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Payload' => {
                              'type' => 'S3_SelectObjectContentEventStream',
                              'class' => 'Paws::S3::SelectObjectContentEventStream'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::SelectObjectContentOutput

=head1 ATTRIBUTES


=head2 Payload => S3_SelectObjectContentEventStream

The array of results.




=cut

