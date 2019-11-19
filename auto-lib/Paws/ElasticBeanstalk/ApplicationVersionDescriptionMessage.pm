# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ApplicationVersionDescription/;
  has ApplicationVersion => (is => 'ro', isa => ElasticBeanstalk_ApplicationVersionDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ApplicationVersion' => {
                                         'type' => 'ElasticBeanstalk_ApplicationVersionDescription',
                                         'class' => 'Paws::ElasticBeanstalk::ApplicationVersionDescription'
                                       }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage

=head1 ATTRIBUTES


=head2 ApplicationVersion => ElasticBeanstalk_ApplicationVersionDescription

The ApplicationVersionDescription of the application version.


=head2 _request_id => Str


=cut

