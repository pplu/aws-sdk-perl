
package Paws::CloudWatchLogs::PutResourcePolicy;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument' );
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutResourcePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $PutResourcePolicyResponse = $logs->PutResourcePolicy(
      PolicyDocument => 'MyPolicyDocument',    # OPTIONAL
      PolicyName     => 'MyPolicyName',        # OPTIONAL
    );

    # Results:
    my $ResourcePolicy = $PutResourcePolicyResponse->ResourcePolicy;

    # Returns a L<Paws::CloudWatchLogs::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 PolicyDocument => Str

Details of the new policy, including the identity of the principal that
is enabled to put logs to this account. This is formatted as a JSON
string.

The following example creates a resource policy enabling the Route 53
service to put DNS query logs in to the specified log group. Replace
"logArn" with the ARN of your CloudWatch Logs resource, such as a log
group or log stream.

C<{ "Version": "2012-10-17", "Statement": [ { "Sid":
"Route53LogsToCloudWatchLogs", "Effect": "Allow", "Principal": {
"Service": [ "route53.amazonaws.com" ] }, "Action":"logs:PutLogEvents",
"Resource": "logArn" } ] }>



=head2 PolicyName => Str

Name of the new policy. This parameter is required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

