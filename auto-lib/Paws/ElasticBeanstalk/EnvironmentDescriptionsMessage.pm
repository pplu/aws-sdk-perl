# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::EnvironmentDescriptionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_EnvironmentDescription/;
  has Environments => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_EnvironmentDescription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Environments' => {
                                   'class' => 'Paws::ElasticBeanstalk::EnvironmentDescription',
                                   'type' => 'ArrayRef[ElasticBeanstalk_EnvironmentDescription]'
                                 }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::EnvironmentDescriptionsMessage

=head1 ATTRIBUTES


=head2 Environments => ArrayRef[ElasticBeanstalk_EnvironmentDescription]

Returns an EnvironmentDescription list.


=head2 NextToken => Str

In a paginated request, the token that you can pass in a subsequent
request to get the next response page.


=head2 _request_id => Str


=cut

