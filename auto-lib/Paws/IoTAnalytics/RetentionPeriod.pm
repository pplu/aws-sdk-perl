package Paws::IoTAnalytics::RetentionPeriod;
  use Moose;
  has NumberOfDays => (is => 'ro', isa => 'Int', request_name => 'numberOfDays', traits => ['NameInRequest']);
  has Unlimited => (is => 'ro', isa => 'Bool', request_name => 'unlimited', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::RetentionPeriod

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::RetentionPeriod object:

  $service_obj->Method(Att1 => { NumberOfDays => $value, ..., Unlimited => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::RetentionPeriod object:

  $result = $service_obj->Method(...);
  $result->Att1->NumberOfDays

=head1 DESCRIPTION

How long, in days, message data is kept.

=head1 ATTRIBUTES


=head2 NumberOfDays => Int

  The number of days that message data is kept. The "unlimited" parameter
must be false.


=head2 Unlimited => Bool

  If true, message data is kept indefinitely.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

