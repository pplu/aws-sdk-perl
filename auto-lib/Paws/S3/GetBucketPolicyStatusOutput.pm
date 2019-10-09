
package Paws::S3::GetBucketPolicyStatusOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_PolicyStatus/;
  has PolicyStatus => (is => 'ro', isa => S3_PolicyStatus);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PolicyStatus');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PolicyStatus' => {
                                   'class' => 'Paws::S3::PolicyStatus',
                                   'type' => 'S3_PolicyStatus'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketPolicyStatusOutput

=head1 ATTRIBUTES


=head2 PolicyStatus => S3_PolicyStatus

The policy status for the specified bucket.




=cut

