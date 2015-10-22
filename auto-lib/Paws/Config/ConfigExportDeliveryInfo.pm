package Paws::Config::ConfigExportDeliveryInfo;
  use Moose;
  has LastAttemptTime => (is => 'ro', isa => 'Str', xmlname => 'lastAttemptTime', request_name => 'lastAttemptTime', traits => ['Unwrapped','NameInRequest']);
  has LastErrorCode => (is => 'ro', isa => 'Str', xmlname => 'lastErrorCode', request_name => 'lastErrorCode', traits => ['Unwrapped','NameInRequest']);
  has LastErrorMessage => (is => 'ro', isa => 'Str', xmlname => 'lastErrorMessage', request_name => 'lastErrorMessage', traits => ['Unwrapped','NameInRequest']);
  has LastStatus => (is => 'ro', isa => 'Str', xmlname => 'lastStatus', request_name => 'lastStatus', traits => ['Unwrapped','NameInRequest']);
  has LastSuccessfulTime => (is => 'ro', isa => 'Str', xmlname => 'lastSuccessfulTime', request_name => 'lastSuccessfulTime', traits => ['Unwrapped','NameInRequest']);
  has NextDeliveryTime => (is => 'ro', isa => 'Str', xmlname => 'nextDeliveryTime', request_name => 'nextDeliveryTime', traits => ['Unwrapped','NameInRequest']);
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

  $service_obj->Method(Att1 => { LastAttemptTime => $value, ..., NextDeliveryTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigExportDeliveryInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->LastAttemptTime

=head1 DESCRIPTION

A list that contains the status of the delivery of either the snapshot
or the configuration history to the specified Amazon S3 bucket.

=head1 ATTRIBUTES

=head2 LastAttemptTime => Str

  The time of the last attempted delivery.

=head2 LastErrorCode => Str

  The error code from the last attempted delivery.

=head2 LastErrorMessage => Str

  The error message from the last attempted delivery.

=head2 LastStatus => Str

  Status of the last attempted delivery.

=head2 LastSuccessfulTime => Str

  The time of the last successful delivery.

=head2 NextDeliveryTime => Str

  The time that the next delivery occurs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

