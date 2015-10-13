package Paws::Config::ConfigExportDeliveryInfo;
  use Moose;
  has lastAttemptTime => (is => 'ro', isa => 'Str');
  has lastErrorCode => (is => 'ro', isa => 'Str');
  has lastErrorMessage => (is => 'ro', isa => 'Str');
  has lastStatus => (is => 'ro', isa => 'Str');
  has lastSuccessfulTime => (is => 'ro', isa => 'Str');
  has nextDeliveryTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigExportDeliveryInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigExportDeliveryInfo object:

  $service_obj->Method(Att1 => { lastAttemptTime => $value, ..., nextDeliveryTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigExportDeliveryInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->lastAttemptTime

=head1 DESCRIPTION

A list that contains the status of the delivery of either the snapshot
or the configuration history to the specified Amazon S3 bucket.

=head1 ATTRIBUTES

=head2 lastAttemptTime => Str

  The time of the last attempted delivery.

=head2 lastErrorCode => Str

  The error code from the last attempted delivery.

=head2 lastErrorMessage => Str

  The error message from the last attempted delivery.

=head2 lastStatus => Str

  Status of the last attempted delivery.

=head2 lastSuccessfulTime => Str

  The time of the last successful delivery.

=head2 nextDeliveryTime => Str

  The time that the next delivery occurs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

