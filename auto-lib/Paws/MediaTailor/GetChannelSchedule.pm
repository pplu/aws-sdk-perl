
package Paws::MediaTailor::GetChannelSchedule;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelName', required => 1);
  has DurationMinutes => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'durationMinutes');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChannelSchedule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel/{channelName}/schedule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::GetChannelScheduleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::GetChannelSchedule - Arguments for method GetChannelSchedule on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetChannelSchedule on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method GetChannelSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetChannelSchedule.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $GetChannelScheduleResponse = $api . mediatailor->GetChannelSchedule(
      ChannelName     => 'My__string',
      DurationMinutes => 'My__string',    # OPTIONAL
      MaxResults      => 1,               # OPTIONAL
      NextToken       => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Items     = $GetChannelScheduleResponse->Items;
    my $NextToken = $GetChannelScheduleResponse->NextToken;

    # Returns a L<Paws::MediaTailor::GetChannelScheduleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/GetChannelSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The identifier for the channel you are working on.



=head2 DurationMinutes => Str

The schedule duration in minutes. The maximum duration is 4320 minutes
(three days).



=head2 MaxResults => Int

Upper bound on number of records to return. The maximum number of
results is 100.



=head2 NextToken => Str

Pagination token from the GET list request. Use the token to fetch the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetChannelSchedule in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

