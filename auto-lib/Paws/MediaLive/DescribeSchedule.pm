
package Paws::MediaLive::DescribeSchedule;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/channels/{channelId}/schedule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DescribeScheduleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeSchedule - Arguments for method DescribeSchedule on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSchedule on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DescribeSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSchedule.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DescribeScheduleResponse = $medialive->DescribeSchedule(
      ChannelId  => 'My__string',
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $DescribeScheduleResponse->NextToken;
    my $ScheduleActions = $DescribeScheduleResponse->ScheduleActions;

    # Returns a L<Paws::MediaLive::DescribeScheduleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DescribeSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

Id of the channel whose schedule is being updated.



=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSchedule in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

