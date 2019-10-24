# Generated from json/callresult_class.tt

package Paws::KinesisAnalytics::DescribeApplicationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_ApplicationDetail/;
  has ApplicationDetail => (is => 'ro', isa => KinesisAnalytics_ApplicationDetail, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationDetail' => {
                                        'class' => 'Paws::KinesisAnalytics::ApplicationDetail',
                                        'type' => 'KinesisAnalytics_ApplicationDetail'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ApplicationDetail' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::DescribeApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationDetail => KinesisAnalytics_ApplicationDetail

Provides a description of the application, such as the application
Amazon Resource Name (ARN), status, latest version, and input and
output configuration details.


=head2 _request_id => Str


=cut

1;