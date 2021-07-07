
package Paws::Route53Resolver::CreateResolverQueryLogConfig;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str', required => 1);
  has DestinationArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResolverQueryLogConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::CreateResolverQueryLogConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateResolverQueryLogConfig - Arguments for method CreateResolverQueryLogConfig on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResolverQueryLogConfig on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method CreateResolverQueryLogConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResolverQueryLogConfig.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $CreateResolverQueryLogConfigResponse =
      $route53resolver->CreateResolverQueryLogConfig(
      CreatorRequestId => 'MyCreatorRequestId',
      DestinationArn   => 'MyDestinationArn',
      Name             => 'MyResolverQueryLogConfigName',
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ResolverQueryLogConfig =
      $CreateResolverQueryLogConfigResponse->ResolverQueryLogConfig;

# Returns a L<Paws::Route53Resolver::CreateResolverQueryLogConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/CreateResolverQueryLogConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatorRequestId => Str

A unique string that identifies the request and that allows failed
requests to be retried without the risk of executing the operation
twice. C<CreatorRequestId> can be any unique string, for example, a
date/time stamp.



=head2 B<REQUIRED> DestinationArn => Str

The ARN of the resource that you want Resolver to send query logs. You
can send query logs to an S3 bucket, a CloudWatch Logs log group, or a
Kinesis Data Firehose delivery stream. Examples of valid values include
the following:

=over

=item *

B<S3 bucket>:

C<arn:aws:s3:::examplebucket>

You can optionally append a file prefix to the end of the ARN.

C<arn:aws:s3:::examplebucket/development/>

=item *

B<CloudWatch Logs log group>:

C<arn:aws:logs:us-west-1:123456789012:log-group:/mystack-testgroup-12ABC1AB12A1:*>

=item *

B<Kinesis Data Firehose delivery stream>:

C<arn:aws:kinesis:us-east-2:0123456789:stream/my_stream_name>

=back




=head2 B<REQUIRED> Name => Str

The name that you want to give the query logging configuration



=head2 Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]

A list of the tag keys and values that you want to associate with the
query logging configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResolverQueryLogConfig in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

