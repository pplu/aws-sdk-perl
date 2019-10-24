
package Paws::IoT::GetV2LoggingOptionsResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::IoT::Types qw//;
  has DefaultLogLevel => (is => 'ro', isa => Str);
  has DisableAllLogs => (is => 'ro', isa => Bool);
  has RoleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DefaultLogLevel' => {
                                      'type' => 'Str'
                                    },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DisableAllLogs' => {
                                     'type' => 'Bool'
                                   }
             },
  'NameInRequest' => {
                       'DefaultLogLevel' => 'defaultLogLevel',
                       'RoleArn' => 'roleArn',
                       'DisableAllLogs' => 'disableAllLogs'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetV2LoggingOptionsResponse

=head1 ATTRIBUTES


=head2 DefaultLogLevel => Str

The default log level.

Valid values are: C<"DEBUG">, C<"INFO">, C<"ERROR">, C<"WARN">, C<"DISABLED">
=head2 DisableAllLogs => Bool

Disables all logs.


=head2 RoleArn => Str

The IAM role ARN AWS IoT uses to write to your CloudWatch logs.


=head2 _request_id => Str


=cut

