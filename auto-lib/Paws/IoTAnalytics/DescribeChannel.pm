
package Paws::IoTAnalytics::DescribeChannel;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::IoTAnalytics::Types qw//;
  has ChannelName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IncludeStatistics => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeChannel');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/channels/{channelName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTAnalytics::DescribeChannelResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ChannelName' => 1
                  },
  'ParamInQuery' => {
                      'IncludeStatistics' => 'includeStatistics'
                    },
  'types' => {
               'ChannelName' => {
                                  'type' => 'Str'
                                },
               'IncludeStatistics' => {
                                        'type' => 'Bool'
                                      }
             },
  'ParamInURI' => {
                    'ChannelName' => 'channelName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeChannel - Arguments for method DescribeChannel on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChannel on the
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method DescribeChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChannel.

=head1 SYNOPSIS

    my $iotanalytics = Paws->service('IoTAnalytics');
    my $DescribeChannelResponse = $iotanalytics->DescribeChannel(
      ChannelName       => 'MyChannelName',
      IncludeStatistics => 1,                 # OPTIONAL
    );

    # Results:
    my $Channel    = $DescribeChannelResponse->Channel;
    my $Statistics = $DescribeChannelResponse->Statistics;

    # Returns a L<Paws::IoTAnalytics::DescribeChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotanalytics/DescribeChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The name of the channel whose information is retrieved.



=head2 IncludeStatistics => Bool

If true, additional statistical information about the channel is
included in the response. This feature cannot be used with a channel
whose S3 storage is customer-managed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChannel in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

