# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ApplicationResourceLifecycleDescriptionMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ApplicationResourceLifecycleConfig/;
  has ApplicationName => (is => 'ro', isa => Str);
  has ResourceLifecycleConfig => (is => 'ro', isa => ElasticBeanstalk_ApplicationResourceLifecycleConfig);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceLifecycleConfig' => {
                                              'type' => 'ElasticBeanstalk_ApplicationResourceLifecycleConfig',
                                              'class' => 'Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig'
                                            },
               'ApplicationName' => {
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

Paws::ElasticBeanstalk::ApplicationResourceLifecycleDescriptionMessage

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application.


=head2 ResourceLifecycleConfig => ElasticBeanstalk_ApplicationResourceLifecycleConfig

The lifecycle configuration.


=head2 _request_id => Str


=cut

