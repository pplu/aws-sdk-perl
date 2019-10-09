
package Paws::S3::GetBucketLoggingOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_LoggingEnabled/;
  has LoggingEnabled => (is => 'ro', isa => S3_LoggingEnabled);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LoggingEnabled' => {
                                     'class' => 'Paws::S3::LoggingEnabled',
                                     'type' => 'S3_LoggingEnabled'
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

Paws::S3::GetBucketLoggingOutput

=head1 ATTRIBUTES


=head2 LoggingEnabled => S3_LoggingEnabled






=cut

