# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::CreateStorageLocationResultMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw//;
  has S3Bucket => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3Bucket' => {
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

Paws::ElasticBeanstalk::CreateStorageLocationResultMessage

=head1 ATTRIBUTES


=head2 S3Bucket => Str

The name of the Amazon S3 bucket created.


=head2 _request_id => Str


=cut

