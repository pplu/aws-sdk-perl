# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::ListPlatformVersionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_PlatformSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has PlatformSummaryList => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_PlatformSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PlatformSummaryList' => {
                                          'type' => 'ArrayRef[ElasticBeanstalk_PlatformSummary]',
                                          'class' => 'Paws::ElasticBeanstalk::PlatformSummary'
                                        },
               'NextToken' => {
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

Paws::ElasticBeanstalk::ListPlatformVersionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The starting index into the remaining list of platforms. if this value
is not C<null>, you can use it in a subsequent C<ListPlatformVersion>
call.


=head2 PlatformSummaryList => ArrayRef[ElasticBeanstalk_PlatformSummary]

Detailed information about the platforms.


=head2 _request_id => Str


=cut

