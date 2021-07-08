
package Paws::CloudFront::CreateRealtimeLogConfig;
  use Moose;
  has EndPoints => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::EndPoint]', required => 1);
  has Fields => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Field', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SamplingRate => (is => 'ro', isa => 'Int', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRealtimeLogConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/realtime-log-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateRealtimeLogConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateRealtimeLogConfigRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateRealtimeLogConfig - Arguments for method CreateRealtimeLogConfig on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRealtimeLogConfig2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateRealtimeLogConfig2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRealtimeLogConfig2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateRealtimeLogConfigResult = $cloudfront->CreateRealtimeLogConfig(
      EndPoints => [
        {
          StreamType          => 'Mystring',
          KinesisStreamConfig => {
            RoleARN   => 'Mystring',
            StreamARN => 'Mystring',

          },    # OPTIONAL
        },
        ...
      ],
      Fields       => [ 'Mystring', ... ],
      Name         => 'Mystring',
      SamplingRate => 1,

    );

    # Results:
    my $RealtimeLogConfig = $CreateRealtimeLogConfigResult->RealtimeLogConfig;

    # Returns a L<Paws::CloudFront::CreateRealtimeLogConfigResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateRealtimeLogConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndPoints => ArrayRef[L<Paws::CloudFront::EndPoint>]

Contains information about the Amazon Kinesis data stream where you are
sending real-time log data.



=head2 B<REQUIRED> Fields => ArrayRef[Str|Undef]

A list of fields to include in each real-time log record.

For more information about fields, see Real-time log configuration
fields
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields)
in the I<Amazon CloudFront Developer Guide>.



=head2 B<REQUIRED> Name => Str

A unique name to identify this real-time log configuration.



=head2 B<REQUIRED> SamplingRate => Int

The sampling rate for this real-time log configuration. The sampling
rate determines the percentage of viewer requests that are represented
in the real-time log data. You must provide an integer between 1 and
100, inclusive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRealtimeLogConfig2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

