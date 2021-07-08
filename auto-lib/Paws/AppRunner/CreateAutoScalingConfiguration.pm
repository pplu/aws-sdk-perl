
package Paws::AppRunner::CreateAutoScalingConfiguration;
  use Moose;
  has AutoScalingConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has MaxConcurrency => (is => 'ro', isa => 'Int');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoScalingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::CreateAutoScalingConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::CreateAutoScalingConfiguration - Arguments for method CreateAutoScalingConfiguration on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAutoScalingConfiguration on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method CreateAutoScalingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAutoScalingConfiguration.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $CreateAutoScalingConfigurationResponse =
      $apprunner->CreateAutoScalingConfiguration(
      AutoScalingConfigurationName => 'MyAutoScalingConfigurationName',
      MaxConcurrency               => 1,    # OPTIONAL
      MaxSize                      => 1,    # OPTIONAL
      MinSize                      => 1,    # OPTIONAL
      Tags                         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $AutoScalingConfiguration =
      $CreateAutoScalingConfigurationResponse->AutoScalingConfiguration;

  # Returns a L<Paws::AppRunner::CreateAutoScalingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/CreateAutoScalingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingConfigurationName => Str

A name for the auto scaling configuration. When you use it for the
first time in an AWS Region, App Runner creates revision number C<1> of
this name. When you use the same name in subsequent calls, App Runner
creates incremental revisions of the configuration.



=head2 MaxConcurrency => Int

The maximum number of concurrent requests that you want an instance to
process. If the number of concurrent requests exceeds this limit, App
Runner scales up your service.

Default: C<100>



=head2 MaxSize => Int

The maximum number of instances that your service scales up to. At most
C<MaxSize> instances actively serve traffic for your service.

Default: C<25>



=head2 MinSize => Int

The minimum number of instances that App Runner provisions for your
service. The service always has at least C<MinSize> provisioned
instances. Some of them actively serve traffic. The rest of them
(provisioned and inactive instances) are a cost-effective compute
capacity reserve and are ready to be quickly activated. You pay for
memory usage of all the provisioned instances. You pay for CPU usage of
only the active subset.

App Runner temporarily doubles the number of provisioned instances
during deployments, to maintain the same capacity for both old and new
code.

Default: C<1>



=head2 Tags => ArrayRef[L<Paws::AppRunner::Tag>]

A list of metadata items that you can associate with your auto scaling
configuration resource. A tag is a key-value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAutoScalingConfiguration in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

