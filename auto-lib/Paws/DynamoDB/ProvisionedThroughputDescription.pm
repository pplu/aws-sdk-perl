package Paws::DynamoDB::ProvisionedThroughputDescription;
  use Moose;
  has LastDecreaseDateTime => (is => 'ro', isa => 'Str');
  has LastIncreaseDateTime => (is => 'ro', isa => 'Str');
  has NumberOfDecreasesToday => (is => 'ro', isa => 'Int');
  has ReadCapacityUnits => (is => 'ro', isa => 'Int');
  has WriteCapacityUnits => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ProvisionedThroughputDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ProvisionedThroughputDescription object:

  $service_obj->Method(Att1 => { LastDecreaseDateTime => $value, ..., WriteCapacityUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ProvisionedThroughputDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->LastDecreaseDateTime

=head1 DESCRIPTION

Represents the provisioned throughput settings for the table,
consisting of read and write capacity units, along with data about
increases and decreases.

=head1 ATTRIBUTES


=head2 LastDecreaseDateTime => Str

  The date and time of the last provisioned throughput decrease for this
table.


=head2 LastIncreaseDateTime => Str

  The date and time of the last provisioned throughput increase for this
table.


=head2 NumberOfDecreasesToday => Int

  The number of provisioned throughput decreases for this table during
this UTC calendar day. For current maximums on provisioned throughput
decreases, see Limits
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 ReadCapacityUnits => Int

  The maximum number of strongly consistent reads consumed per second
before DynamoDB returns a C<ThrottlingException>. Eventually consistent
reads require less effort than strongly consistent reads, so a setting
of 50 C<ReadCapacityUnits> per second provides 100 eventually
consistent C<ReadCapacityUnits> per second.


=head2 WriteCapacityUnits => Int

  The maximum number of writes consumed per second before DynamoDB
returns a C<ThrottlingException>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

