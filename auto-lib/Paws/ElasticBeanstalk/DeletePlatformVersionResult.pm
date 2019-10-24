# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::DeletePlatformVersionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_PlatformSummary/;
  has PlatformSummary => (is => 'ro', isa => ElasticBeanstalk_PlatformSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PlatformSummary' => {
                                      'class' => 'Paws::ElasticBeanstalk::PlatformSummary',
                                      'type' => 'ElasticBeanstalk_PlatformSummary'
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

Paws::ElasticBeanstalk::DeletePlatformVersionResult

=head1 ATTRIBUTES


=head2 PlatformSummary => ElasticBeanstalk_PlatformSummary

Detailed information about the version of the custom platform.


=head2 _request_id => Str


=cut

