# Generated from callresult_class.tt

package Paws::AutoScaling::DescribeNotificationConfigurationsAnswer;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_NotificationConfiguration/;
  has NextToken => (is => 'ro', isa => Str);
  has NotificationConfigurations => (is => 'ro', isa => ArrayRef[AutoScaling_NotificationConfiguration], required => 1);

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
               'NotificationConfigurations' => {
                                                 'class' => 'Paws::AutoScaling::NotificationConfiguration',
                                                 'type' => 'ArrayRef[AutoScaling_NotificationConfiguration]'
                                               }
             },
  'IsRequired' => {
                    'NotificationConfigurations' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeNotificationConfigurationsAnswer

=head1 ATTRIBUTES


=head2 NextToken => Str

A string that indicates that the response contains more items than can
be returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 B<REQUIRED> NotificationConfigurations => ArrayRef[AutoScaling_NotificationConfiguration]

The notification configurations.


=head2 _request_id => Str


=cut

