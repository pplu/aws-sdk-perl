# Generated from json/callresult_class.tt

package Paws::Lightsail::GetRelationalDatabaseLogEventsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_LogEvent/;
  has NextBackwardToken => (is => 'ro', isa => Str);
  has NextForwardToken => (is => 'ro', isa => Str);
  has ResourceLogEvents => (is => 'ro', isa => ArrayRef[Lightsail_LogEvent]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextBackwardToken' => {
                                        'type' => 'Str'
                                      },
               'NextForwardToken' => {
                                       'type' => 'Str'
                                     },
               'ResourceLogEvents' => {
                                        'class' => 'Paws::Lightsail::LogEvent',
                                        'type' => 'ArrayRef[Lightsail_LogEvent]'
                                      }
             },
  'NameInRequest' => {
                       'ResourceLogEvents' => 'resourceLogEvents',
                       'NextForwardToken' => 'nextForwardToken',
                       'NextBackwardToken' => 'nextBackwardToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseLogEventsResult

=head1 ATTRIBUTES


=head2 NextBackwardToken => Str

A token used for advancing to the previous page of results from your
get relational database log events request.


=head2 NextForwardToken => Str

A token used for advancing to the next page of results from your get
relational database log events request.


=head2 ResourceLogEvents => ArrayRef[Lightsail_LogEvent]

An object describing the result of your get relational database log
events request.


=head2 _request_id => Str


=cut

1;