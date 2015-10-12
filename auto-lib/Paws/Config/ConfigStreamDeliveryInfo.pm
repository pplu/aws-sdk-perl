package Paws::Config::ConfigStreamDeliveryInfo;
  use Moose;
  has lastErrorCode => (is => 'ro', isa => 'Str');
  has lastErrorMessage => (is => 'ro', isa => 'Str');
  has lastStatus => (is => 'ro', isa => 'Str');
  has lastStatusChangeTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigStreamDeliveryInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigStreamDeliveryInfo object:

  $service_obj->Method(Att1 => { lastErrorCode => $value, ..., lastStatusChangeTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigStreamDeliveryInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->lastErrorCode

=head1 ATTRIBUTES

=head2 lastErrorCode => Str

  The error code from the last attempted delivery.

=head2 lastErrorMessage => Str

  The error message from the last attempted delivery.

=head2 lastStatus => Str

  Status of the last attempted delivery.

B<Note> Providing an SNS topic on a DeliveryChannel for AWS Config is
optional. If the SNS delivery is turned off, the last status will be
B<Not_Applicable>.

=head2 lastStatusChangeTime => Str

  The time from the last status change.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

