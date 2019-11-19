# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ValidationMessage/;
  has Messages => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_ValidationMessage]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Messages' => {
                               'type' => 'ArrayRef[ElasticBeanstalk_ValidationMessage]',
                               'class' => 'Paws::ElasticBeanstalk::ValidationMessage'
                             }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[ElasticBeanstalk_ValidationMessage]

A list of ValidationMessage.


=head2 _request_id => Str


=cut

