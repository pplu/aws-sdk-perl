# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ApplicationVersionDescriptionsMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ApplicationVersionDescription/;
  has ApplicationVersions => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_ApplicationVersionDescription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ApplicationVersions' => {
                                          'class' => 'Paws::ElasticBeanstalk::ApplicationVersionDescription',
                                          'type' => 'ArrayRef[ElasticBeanstalk_ApplicationVersionDescription]'
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

Paws::ElasticBeanstalk::ApplicationVersionDescriptionsMessage

=head1 ATTRIBUTES


=head2 ApplicationVersions => ArrayRef[ElasticBeanstalk_ApplicationVersionDescription]

List of C<ApplicationVersionDescription> objects sorted in order of
creation.


=head2 NextToken => Str

In a paginated request, the token that you can pass in a subsequent
request to get the next response page.


=head2 _request_id => Str


=cut

