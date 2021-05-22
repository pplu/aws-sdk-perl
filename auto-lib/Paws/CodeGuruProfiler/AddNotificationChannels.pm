
package Paws::CodeGuruProfiler::AddNotificationChannels;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruProfiler::Channel]', traits => ['NameInRequest'], request_name => 'channels', required => 1);
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddNotificationChannels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}/notificationConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::AddNotificationChannelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::AddNotificationChannels - Arguments for method AddNotificationChannels on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddNotificationChannels on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method AddNotificationChannels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddNotificationChannels.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $AddNotificationChannelsResponse =
      $codeguru -profiler->AddNotificationChannels(
      Channels => [
        {
          EventPublishers => [
            'AnomalyDetection', ...    # values: AnomalyDetection
          ],                           # min: 1, max: 1
          Uri => 'MyChannelUri',
          Id  => 'MyChannelId',        # OPTIONAL
        },
        ...
      ],
      ProfilingGroupName => 'MyProfilingGroupName',

      );

    # Results:
    my $NotificationConfiguration =
      $AddNotificationChannelsResponse->NotificationConfiguration;

  # Returns a L<Paws::CodeGuruProfiler::AddNotificationChannelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/AddNotificationChannels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Channels => ArrayRef[L<Paws::CodeGuruProfiler::Channel>]

One or 2 channels to report to when anomalies are detected.



=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group that we are setting up notifications
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddNotificationChannels in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

