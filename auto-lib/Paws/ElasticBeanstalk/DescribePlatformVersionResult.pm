# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::DescribePlatformVersionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_PlatformDescription/;
  has PlatformDescription => (is => 'ro', isa => ElasticBeanstalk_PlatformDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PlatformDescription' => {
                                          'class' => 'Paws::ElasticBeanstalk::PlatformDescription',
                                          'type' => 'ElasticBeanstalk_PlatformDescription'
                                        }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribePlatformVersionResult

=head1 ATTRIBUTES


=head2 PlatformDescription => ElasticBeanstalk_PlatformDescription

Detailed information about the version of the platform.


=head2 _request_id => Str


=cut

