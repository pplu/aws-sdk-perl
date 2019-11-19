# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ApplicationDescriptionMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ApplicationDescription/;
  has Application => (is => 'ro', isa => ElasticBeanstalk_ApplicationDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Application' => {
                                  'class' => 'Paws::ElasticBeanstalk::ApplicationDescription',
                                  'type' => 'ElasticBeanstalk_ApplicationDescription'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationDescriptionMessage

=head1 ATTRIBUTES


=head2 Application => ElasticBeanstalk_ApplicationDescription

The ApplicationDescription of the application.


=head2 _request_id => Str


=cut

