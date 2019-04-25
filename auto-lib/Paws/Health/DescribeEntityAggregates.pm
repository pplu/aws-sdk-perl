
package Paws::Health::DescribeEntityAggregates;
  use Moose;
  has EventArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'eventArns' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEntityAggregates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Health::DescribeEntityAggregatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEntityAggregates - Arguments for method DescribeEntityAggregates on L<Paws::Health>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEntityAggregates on the
L<AWS Health APIs and Notifications|Paws::Health> service. Use the attributes of this class
as arguments to method DescribeEntityAggregates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEntityAggregates.

=head1 SYNOPSIS

    my $health = Paws->service('Health');
    my $DescribeEntityAggregatesResponse = $health->DescribeEntityAggregates(
      EventArns => [
        'MyeventArn', ...    # max: 1600
      ],                     # OPTIONAL
    );

    # Results:
    my $EntityAggregates = $DescribeEntityAggregatesResponse->EntityAggregates;

    # Returns a L<Paws::Health::DescribeEntityAggregatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/health/DescribeEntityAggregates>

=head1 ATTRIBUTES


=head2 EventArns => ArrayRef[Str|Undef]

A list of event ARNs (unique identifiers). For example:
C<"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456",
"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101">




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEntityAggregates in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

