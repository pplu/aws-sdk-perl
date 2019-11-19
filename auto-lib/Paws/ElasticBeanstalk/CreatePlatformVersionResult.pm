# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::CreatePlatformVersionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_Builder ElasticBeanstalk_PlatformSummary/;
  has Builder => (is => 'ro', isa => ElasticBeanstalk_Builder);
  has PlatformSummary => (is => 'ro', isa => ElasticBeanstalk_PlatformSummary);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Builder' => {
                              'class' => 'Paws::ElasticBeanstalk::Builder',
                              'type' => 'ElasticBeanstalk_Builder'
                            },
               'PlatformSummary' => {
                                      'type' => 'ElasticBeanstalk_PlatformSummary',
                                      'class' => 'Paws::ElasticBeanstalk::PlatformSummary'
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

Paws::ElasticBeanstalk::CreatePlatformVersionResult

=head1 ATTRIBUTES


=head2 Builder => ElasticBeanstalk_Builder

The builder used to create the custom platform.


=head2 PlatformSummary => ElasticBeanstalk_PlatformSummary

Detailed information about the new version of the custom platform.


=head2 _request_id => Str


=cut

