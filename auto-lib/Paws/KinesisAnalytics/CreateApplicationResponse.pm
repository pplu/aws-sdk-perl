# Generated from json/callresult_class.tt

package Paws::KinesisAnalytics::CreateApplicationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_ApplicationSummary/;
  has ApplicationSummary => (is => 'ro', isa => KinesisAnalytics_ApplicationSummary, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationSummary' => {
                                         'class' => 'Paws::KinesisAnalytics::ApplicationSummary',
                                         'type' => 'KinesisAnalytics_ApplicationSummary'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ApplicationSummary' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSummary => KinesisAnalytics_ApplicationSummary

In response to your C<CreateApplication> request, Amazon Kinesis
Analytics returns a response with a summary of the application it
created, including the application Amazon Resource Name (ARN), name,
and status.


=head2 _request_id => Str


=cut

1;