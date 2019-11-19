
package Paws::S3::GetBucketPolicyOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has Policy => (is => 'ro', isa => Str);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'Policy');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Policy' => {
                             'type' => 'Str'
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

Paws::S3::GetBucketPolicyOutput

=head1 ATTRIBUTES


=head2 Policy => Str

The bucket policy as a JSON document.




=cut

