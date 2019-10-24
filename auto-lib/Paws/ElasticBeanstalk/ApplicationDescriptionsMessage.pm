# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ApplicationDescriptionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ApplicationDescription/;
  has Applications => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_ApplicationDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Applications' => {
                                   'class' => 'Paws::ElasticBeanstalk::ApplicationDescription',
                                   'type' => 'ArrayRef[ElasticBeanstalk_ApplicationDescription]'
                                 }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationDescriptionsMessage

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[ElasticBeanstalk_ApplicationDescription]

This parameter contains a list of ApplicationDescription.


=head2 _request_id => Str


=cut

