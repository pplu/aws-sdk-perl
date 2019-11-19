
package Paws::S3Control::GetPublicAccessBlockOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3Control::Types qw/S3Control_PublicAccessBlockConfiguration/;
  has PublicAccessBlockConfiguration => (is => 'ro', isa => S3Control_PublicAccessBlockConfiguration);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicAccessBlockConfiguration');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PublicAccessBlockConfiguration' => {
                                                     'type' => 'S3Control_PublicAccessBlockConfiguration',
                                                     'class' => 'Paws::S3Control::PublicAccessBlockConfiguration'
                                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetPublicAccessBlockOutput

=head1 ATTRIBUTES


=head2 PublicAccessBlockConfiguration => S3Control_PublicAccessBlockConfiguration






=cut

