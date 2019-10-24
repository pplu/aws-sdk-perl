
package Paws::IoT::GetLoggingOptionsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has LogLevel => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LogLevel' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'LogLevel' => 'logLevel'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetLoggingOptionsResponse

=head1 ATTRIBUTES


=head2 LogLevel => Str

The logging level.

Valid values are: C<"DEBUG">, C<"INFO">, C<"ERROR">, C<"WARN">, C<"DISABLED">
=head2 RoleArn => Str

The ARN of the IAM role that grants access.


=head2 _request_id => Str


=cut

