package Paws::SES::SendDataPoint;
  use Moose;
  has Bounces => (is => 'ro', isa => 'Int');
  has Complaints => (is => 'ro', isa => 'Int');
  has DeliveryAttempts => (is => 'ro', isa => 'Int');
  has Rejects => (is => 'ro', isa => 'Int');
  has Timestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SendDataPoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::SendDataPoint object:

  $service_obj->Method(Att1 => { Bounces => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::SendDataPoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Bounces

=head1 DESCRIPTION

Represents sending statistics data. Each C<SendDataPoint> contains
statistics for a 15-minute period of sending activity.

=head1 ATTRIBUTES


=head2 Bounces => Int

  Number of emails that have bounced.


=head2 Complaints => Int

  Number of unwanted emails that were rejected by recipients.


=head2 DeliveryAttempts => Int

  Number of emails that have been sent.


=head2 Rejects => Int

  Number of emails rejected by Amazon SES.


=head2 Timestamp => Str

  Time of the data point.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

