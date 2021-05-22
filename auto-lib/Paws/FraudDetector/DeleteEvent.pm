
package Paws::FraudDetector::DeleteEvent;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId' , required => 1);
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEvent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::DeleteEventResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::DeleteEvent - Arguments for method DeleteEvent on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEvent on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method DeleteEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEvent.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $DeleteEventResult = $frauddetector->DeleteEvent(
      EventId       => 'Myidentifier',
      EventTypeName => 'Myidentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/DeleteEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventId => Str

The ID of the event to delete.



=head2 B<REQUIRED> EventTypeName => Str

The name of the event type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEvent in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

