
package Paws::S3::GetPublicAccessBlockOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_PublicAccessBlockConfiguration/;
  has PublicAccessBlockConfiguration => (is => 'ro', isa => S3_PublicAccessBlockConfiguration);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicAccessBlockConfiguration');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PublicAccessBlockConfiguration' => {
                                                     'class' => 'Paws::S3::PublicAccessBlockConfiguration',
                                                     'type' => 'S3_PublicAccessBlockConfiguration'
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

Paws::S3::GetPublicAccessBlockOutput

=head1 ATTRIBUTES


=head2 PublicAccessBlockConfiguration => S3_PublicAccessBlockConfiguration

The C<PublicAccessBlock> configuration currently in effect for this
Amazon S3 bucket.




=cut

