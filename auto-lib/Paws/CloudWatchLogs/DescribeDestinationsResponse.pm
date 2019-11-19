# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::DescribeDestinationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_Destination/;
  has Destinations => (is => 'ro', isa => ArrayRef[CloudWatchLogs_Destination]);
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
               'Destinations' => {
                                   'class' => 'Paws::CloudWatchLogs::Destination',
                                   'type' => 'ArrayRef[CloudWatchLogs_Destination]'
                                 }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Destinations' => 'destinations'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeDestinationsResponse

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[CloudWatchLogs_Destination]

The destinations.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;